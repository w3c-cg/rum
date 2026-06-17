# AGENTS.md — Meeting Minute Processing

Guidance for AI agents helping process RUM Community Group (RUMCG) meeting minutes in
this directory. The full human checklist is in [`processing.md`](processing.md); this file
covers the parts an agent can reliably do **inside this git repo** and the conventions to
follow.

## What an agent can do in-repo

When the required meeting files are available, the agent can produce and update:

1. `meetings/<year>/<date>/transcript.md` — transcript converted from DOCX format to Markdown format
2. `meetings/README.md` — add a row linking the new meeting
   - Ask the user for a link to the Google Meet Recording
3. Prepare the contents of a message the user will post to `#w3c-rum-community-group` Slack channel
4. Prepare the contents of a message the user will post to the `public-rumcg@w3.org` email list
5. Prepare the contents of a Bsky message the user will post

## What an agent CANNOT do (manual / external steps)

These require Google Workspace, Slack, email, or a browser and must be done by a human —
do not fake links or invent IDs for them:

- Creating/maintaining the Google Doc and linking it from the RUMCG Agenda doc
- `index.html` (+ any images) — downloaded from the Google Doc as zipped HTML
- `index.md` downloaded from the Google Doc as Markdown
- `slides.pdf` / `slides.pptx` — exported from Google Slides
- Saving the Google Meet recording + chat log to Google Drive (and getting its share link)
- Posting the message to the `#w3c-rum-community-group` Slack channel
- Posting the message to the `public-rumcg@w3.org` email list
- Posting the message to Bsky

When you finish the in-repo work, list these remaining manual steps for the user, and
provide the three message contents for Slack, Email and Bsky.

## Source files

The user drops meeting assets into the meeting folder.  Typically this is:

- `index.md` - formatted meeting minutes in Markdown
- `index.hmtl` - formatted meeting minutes in HTML
- `slides.pdf` - slides in PDF
- `slides.pptx` - slides in PPTX
- A `transcript.docx` with timestamp/speaker/text blocks — the **transcript**. Source for `transcript.md`.

Before taking any other steps, ensure the above files exist.  If not, prompt the user to add them.

Identify each by opening it (a `.docx` is a zip; see extraction below), not by filename alone —
the filenames vary and are sometimes misleading.

### Extracting .docx text

`pandoc` and `python-docx` **may not** be installed. Python may be in the path.
A `.docx` is a zip whose `word/document.xml` holds the body. Extract paragraph text by walking
`<w:p>` elements (collect `<w:t>` text, treat `<w:tab>`/`<w:br>` as whitespace; map `pStyle`
`Heading1/2/3` to `#`/`##`/`###` and `numPr` indent levels to bullets).

**Always write extracted text to a UTF-8 file directly** (`open(path,'w',encoding='utf-8')`).
Do **not** rely on `python ... > file.txt` stdout redirection in Git Bash — the Windows console
encoding mangles en-dashes (`–`) and curly quotes (`'`).

Clean up any temporary extraction scripts/text files when done.

## transcript.md conventions

Format is blocks of three lines — timestamp, speaker, text — separated by blank lines:

```text
00:00
Nic Jansma
Everybody, I really apologize for that...
```

This matches the scribe's transcript `.docx` directly. Strip any leading blank line.
Repo files use **CRLF** line endings (Python on Windows writes CRLF by default — fine).

## README.md update

Add a row to the **top** of the correct year's table. Columns:
`Meeting | Minutes | Slides (PPTX) | Slides (PDF) | Recording | Transcript`.

- Minutes → `https://w3c-cg.github.io/rum/meetings/<year>/<date>/index.html` (GitHub Pages)
- Slides/Transcript → `https://github.com/w3c-cg/rum/blob/main/meetings/<year>/<date>/<file>`
- Recording → a Google Drive share link the user must supply; use `(recording pending)` until then.

The table uses bare `[link](...)` text and has no top-level heading — match it; the markdown
lint warnings (MD041/MD059) are pre-existing and intentional. Don't "fix" them.

## Message contents templates

The following placeholder text can be used in any of the message contents below:

- `{{LONGDATE}}` is the human friendly date, such as `May 13th`
- `{{SHROTDATE}}` is a date in `yyyy-mm-dd` format, such as `2026-05-13`
- `{{YEAR}}` is the current year in `yyyy` format, such as `2026`
- `{{RECORDINGLINK}}` is the Google Meet Recording link provided by the user

## Meeting summary Slack message contents

Using the message contents templates, prepare the following text:

```text
{{LONGDATE}} [meeting content](https://w3c-cg.github.io/rum/meetings/):

* Minutes: [HTML](https://w3c-cg.github.io/rum/meetings/{{2026}}/{{SHORTDATE}}/index.html) [Markdown](https://w3c-cg.github.io/rum/meetings/{{YEAR}}/{{SHORTDATE}}/index.md)
* Slides: [PPTX](https://github.com/w3c-cg/rum/blob/main/meetings/{{YEAR}}/{{SHORTDATE}}/slides.pptx) [PDF](https://github.com/w3c-cg/rum/blob/main/meetings/{{YEAR}}/{{SHORTDATE}}/slides.pdf)
* [Recording]({{RECORDINGLINK}})
* [Transcript](https://github.com/w3c-cg/rum/blob/main/meetings/{{YEAR}}/{{SHORTDATE}}/transcript.md)
```

Provide this text to the user to post to the `#w3c-rum-community-group` Slack channel.

## Meeting summary Email message contents

Using the message contents templates, prepare the following text:

```text
{{LONGDATE}} meeting content (https://w3c-cg.github.io/rum/meetings/):

* Minutes:
  * HTML: https://w3c-cg.github.io/rum/meetings/{{2026}}/{{SHORTDATE}}/index.html
  * Markdown: https://w3c-cg.github.io/rum/meetings/{{YEAR}}/{{SHORTDATE}}/index.md
* Slides:
  * PPTX: https://github.com/w3c-cg/rum/blob/main/meetings/{{YEAR}}/{{SHORTDATE}}/slides.pptx
  * PDF: https://github.com/w3c-cg/rum/blob/main/meetings/{{YEAR}}/{{SHORTDATE}}/slides.pdf
* Recording: {{RECORDINGLINK}}
* Transcript: https://github.com/w3c-cg/rum/blob/main/meetings/{{YEAR}}/{{SHORTDATE}}/transcript.md
```

Provide this text to the user to email to `public-rumcg@w3.org`.

# Bsky message contents

Using the message contents templates, prepare the following text:

```text
W3C RUM Community Group (RUMCG) {{SHORTDATE}} meeting minutes + recording are now available: https://w3c-cg.github.io/rum/meetings/
```

Provide this text to the user to Bsky.

## Gotchas

- **Folder date = meeting date.** The folder is `meetings/<year>/<YYYY-MM-DD>` where the date is
  the meeting date (also used in the `index.md` header and README label). If the folder name and
  the scribe's date disagree, confirm with the user before proceeding — past convention is the
  meeting date wins.
- **Scribe transcribes "RUM" as "Room".** Search the summary for "Room" and fix to "RUM"
  (e.g. "Room community" → "RUM community").
- **Source `.docx` are working inputs, not deliverables.** Prior meeting folders contain only the
  generated files (`index.html`, `index.md`, `slides.*`, `transcript.md`). Recommend the user
  remove the raw `.docx` exports before committing.
