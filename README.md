# Church Notes Extractor Template

A GitHub + ChatGPT framework for turning handwritten or typed church notes into organized Markdown files with an automatically generated index.

## Designed for nontechnical users

You do **not** need Python, Git, VS Code, YAML, Markdown, or command-line experience to use the finished system.

## Getting started

### I do not have a GitHub account

Start with **[GITHUB-SETUP.md](GITHUB-SETUP.md)**. It explains how to create a free GitHub account and then return here to create your own Church Notes Extractor repository.

### I already have a GitHub account

1. Click **Use this template** on this repository.
2. Choose **Create a new repository**.
3. Give your repository a name such as `my-church-notes`.
4. Choose **Private** if you do not want your notes publicly visible.
5. Create the repository.
6. Open **[SETUP.md](SETUP.md)** and follow the guided setup.

### I already ran the setup workflow

Open **`START-HERE.md`** in your new repository. It contains the final ChatGPT connection checklist generated specifically for you.

## What you will need

- [ ] An email address
- [ ] A free GitHub account
- [ ] A ChatGPT account
- [ ] About 10 minutes for initial setup
- [ ] A photo of a church note to test

## What happens during setup

1. Create your repository from this template.
2. Allow GitHub Actions to update generated files.
3. Run **Configure Church Notes System**.
4. Enter your name, optional additional note authors, church name, and Bible translation.
5. The workflow creates your personalized folders, configuration, welcome message, and ChatGPT instructions.
6. Follow the generated `START-HERE.md` instructions to connect ChatGPT.
7. Upload a photo of your notes.

After notes are pushed, GitHub Actions automatically rebuilds `INDEX.md`.

## What the template contains

- `GITHUB-SETUP.md` — beginner instructions for creating a GitHub account.
- `SETUP.md` — complete guided repository setup.
- `tools/configure.py` — personalizes the repository from the setup form.
- `tools/build-index.py` — generates the searchable Markdown index.
- `.github/workflows/setup.yml` — first-run configuration form and automation.
- `.github/workflows/build-index.yml` — automatic index rebuilding after notes are committed.
- `samples/` — example service, devotional, and personal notes.
- `prompts/` — generated ChatGPT Project instructions.
- `notes/` — personalized note folders created during setup.

## Important GitHub setting

The workflows need permission to commit generated files. If a workflow reports a permissions error, go to:

**Settings → Actions → General → Workflow permissions → Read and write permissions → Save**

Then run the workflow again.