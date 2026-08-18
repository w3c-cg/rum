# Convert DOCX transcript to Markdown
# Usage: .\docx-to-md.ps1 -DocxPath "path\to\transcript.docx" -OutputPath "path\to\transcript.md"

param(
    [Parameter(Mandatory=$true)]
    [string]$DocxPath,

    [Parameter(Mandatory=$false)]
    [string]$OutputPath
)

# If no output path specified, use the same directory with .md extension
if (-not $OutputPath) {
    $OutputPath = [System.IO.Path]::ChangeExtension($DocxPath, ".md")
}

$tempDir = "$(Get-Item -Path Temp -ErrorAction SilentlyContinue).FullName\docx_extract_$(Get-Random)"
$zipPath = [System.IO.Path]::ChangeExtension($DocxPath, ".zip")

try {
    # Verify input file exists
    if (-not (Test-Path $DocxPath)) {
        throw "DOCX file not found: $DocxPath"
    }

    Write-Host "Converting $DocxPath to Markdown..."

    # Create temp directory
    if (Test-Path $tempDir) {
        Remove-Item -Path $tempDir -Recurse -Force
    }

    # Copy docx to zip and extract
    Copy-Item -Path $DocxPath -Destination $zipPath -Force
    Expand-Archive -Path $zipPath -DestinationPath $tempDir -Force
    Remove-Item -Path $zipPath -Force

    # Read and parse Word XML
    [xml]$xmlDoc = Get-Content -Path "$tempDir\word\document.xml" -Raw

    # Extract paragraphs with proper break handling
    # Breaks (<w:br/>) within a run separate lines within a paragraph
    # Paragraphs are separated by blank lines in the output
    $paragraphs = $xmlDoc.GetElementsByTagName("w:p")
    $output = @()

    foreach ($p in $paragraphs) {
        $runs = $p.GetElementsByTagName("w:r")
        $lines = @()
        $current_line = ""

        foreach ($r in $runs) {
            # Check for breaks and text
            $breaks = $r.GetElementsByTagName("w:br")
            $texts = $r.GetElementsByTagName("w:t")

            # Add text to current line
            foreach ($t in $texts) {
                if ($t.InnerText) {
                    $current_line += $t.InnerText
                }
            }

            # Handle breaks (they separate lines within a paragraph)
            if ($breaks.Count -gt 0) {
                if ($current_line.Trim()) {
                    $lines += $current_line
                }
                $current_line = ""
            }
        }

        # Add final line if any
        if ($current_line.Trim()) {
            $lines += $current_line
        }

        # Add lines to output
        foreach ($line in $lines) {
            $output += $line
        }

        # Add blank line between paragraphs
        if ($lines.Count -gt 0) {
            $output += ""
        }
    }

    # Clean up blank lines
    while ($output.Count -gt 0 -and $output[0] -eq "") {
        $output = $output[1..($output.Count-1)]
    }

    while ($output.Count -gt 0 -and $output[-1] -eq "") {
        $output = $output[0..($output.Count-2)]
    }

    # Write to file with UTF-8 encoding and CRLF line endings (Windows standard)
    $content = [string]::Join("`r`n", $output)
    [System.IO.File]::WriteAllText($OutputPath, $content, [System.Text.Encoding]::UTF8)

    Write-Host "✓ Created $OutputPath with $($output.Count) lines"
    Write-Host "✓ File size: $(Get-Item $OutputPath).Length bytes"

} finally {
    # Clean up temp directory
    if (Test-Path $tempDir) {
        Remove-Item -Path $tempDir -Recurse -Force
    }
}
