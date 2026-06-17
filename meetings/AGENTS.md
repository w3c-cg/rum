# AGENTS.md — Meeting Minute Processing

Guidance for AI agents helping process RUM Community Group (RUMCG) meeting minutes in
this directory. The full human checklist is in [`processing.md`](processing.md); this file
covers the parts an agent can reliably do **inside this git repo** and the conventions to
follow.

## What an agent can do in-repo

Given a new meeting folder containing the raw AI-scribe exports (usually `.docx` files), an
agent can produce and update:

1. `meetings/<year>/<date>/index.md` — the formatted meeting minutes
2. `meetings/<year>/<date>/transcript.md` — the verbatim AI transcript
3. `meetings/README.md` — add a row linking the new meeting

## What an agent CANNOT do (manual / external steps)

These require Google Workspace, Slack, email, or a browser and must be done by a human —
do not fake links or invent IDs for them:

- Creating/maintaining the Google Doc and linking it from the RUMCG Agenda doc
- `index.html` (+ any images) — downloaded from the Google Doc as zipped HTML
- `slides.pdf` / `slides.pptx` — exported from Google Slides
- Saving the Google Meet recording + chat log to Google Drive (and getting its share link)
- Posting the summary to the `#w3c-rum-community-group` Slack channel
- Posting the summary to the `public-rumcg@w3.org` email list

When you finish the in-repo work, list these remaining manual steps for the user.

## Source files

The user drops AI-scribe exports into the meeting folder. Typical set:

- A large `.docx` (e.g. `RUM CG <Month> <Date>, <Year>.docx`) — contains the **AI summary**
  (General Summary, Notes, Action items) plus sometimes the transcript. This is the source
  for `index.md`.
- A `.docx` with timestamp/speaker/text blocks — the **transcript**. Source for `transcript.md`.
- A "Notes in the chat …" `.docx` — the **chat log**. Per `processing.md` this goes to Google
  Drive, **not** the repo; do not create a repo file for it unless asked.

Identify each by opening it (a `.docx` is a zip; see extraction below), not by filename alone —
the filenames vary and are sometimes misleading.

### Extracting .docx text

`pandoc` and `python-docx` are **not** installed. Python 3.10 is at `/c/Python310/python`.
A `.docx` is a zip whose `word/document.xml` holds the body. Extract paragraph text by walking
`<w:p>` elements (collect `<w:t>` text, treat `<w:tab>`/`<w:br>` as whitespace; map `pStyle`
`Heading1/2/3` to `#`/`##`/`###` and `numPr` indent levels to bullets).

**Always write extracted text to a UTF-8 file directly** (`open(path,'w',encoding='utf-8')`).
Do **not** rely on `python ... > file.txt` stdout redirection in Git Bash — the Windows console
encoding mangles en-dashes (`–`) and curly quotes (`'`).

Clean up any temporary extraction scripts/text files when done.

## index.md conventions

Match the most recent existing `index.md` (e.g. `2026/2026-05-13/index.md`) exactly:

- First line: `## <Month D, YYYY> | [RUMCG Meeting](<calendar link>)`
  The calendar link is the same recurring-event URL reused across all meetings — copy it
  from the previous meeting's `index.md`.
- Sections in order: `## Agenda`, `## Admin` (with `* Next meeting: <date>`),
  `## **General Summary**`, `## **Notes**`, `## **Action items**`, `## Open Questions`.
- House style **bolds** the summary/notes headers and the per-topic bullet titles
  (`### **Heading**`, `* **Topic title** (MM:SS)`); the raw scribe export does not — add it.
- Keep the `(MM:SS)` timestamps the scribe attaches to each topic and action item.
- Action items group under `##### **Name**` headings.

## transcript.md conventions

Format is blocks of three lines — timestamp, speaker, text — separated by blank lines:

```
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
