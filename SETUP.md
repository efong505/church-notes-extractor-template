# Setup Guide

This guide is written for people who do not normally work with GitHub.

> **Don't have a GitHub account yet?** Start with [GITHUB-SETUP.md](GITHUB-SETUP.md), then return here after your new repository has been created from the template.

> **ChatGPT plan note:** You can start with a free ChatGPT account, but Free users have lower usage limits that can affect image/file uploads and repeated note-processing sessions. Frequent users may prefer a paid plan. See [CHATGPT-PLANS.md](CHATGPT-PLANS.md). This project receives no commission, referral payment, affiliate fee, or other compensation from paid ChatGPT subscriptions.

## Step 1 — Create your repository

1. On the template repository page, click **Use this template**.
2. Choose **Create a new repository**.
3. Give the repository a name, such as `my-church-notes`.
4. Choose **Private** if you do not want your notes publicly visible.
5. Click **Create repository**.

## Step 2 — Allow the automation to update files

In your new repository:

1. Click **Settings**.
2. Click **Actions**, then **General**.
3. Scroll to **Workflow permissions**.
4. Select **Read and write permissions**.
5. Click **Save**.

## Step 3 — Run the one-time setup

1. Click the **Actions** tab.
2. Click **Configure Church Notes System**.
3. Click **Run workflow**.
4. Fill in:
   - Your name.
   - Other people who will have their own notes, separated by commas. Leave blank if none.
   - Church name, if desired.
   - Default Bible translation.
   - Optional title for the notes system.
5. Click **Run workflow**.
6. Wait for the run to show a green check mark.

The workflow creates personalized author folders, writes `config/church-notes.json`, generates ChatGPT instructions and a personalized welcome, updates the repository README, and creates `START-HERE.md`.

## Step 4 — Connect ChatGPT to GitHub

This is a one-time security authorization and must be approved by the GitHub account owner.

1. In ChatGPT, open **Settings → Apps**.
2. Find **GitHub** and choose **Connect**.
3. Complete the GitHub sign-in or authorization screen if prompted.
4. When GitHub asks which repositories ChatGPT may access, choose **Only select repositories** if that option is available.
5. Select only this church-notes repository.
6. Approve the connection and return to ChatGPT.

Limiting access to this repository is recommended because ChatGPT does not need access to unrelated repositories for this notes system.

If the repository is new or private and does not appear immediately in ChatGPT, wait a few minutes and check again.

## Step 5 — Configure the ChatGPT Project

1. Open `prompts/chatgpt-project-instructions.md` in your repository.
2. Copy the entire file.
3. Create a new ChatGPT Project for your church notes.
4. Paste the copied text into the Project instructions.
5. Open the Project and confirm that the personalized welcome message appears.

If ChatGPT later asks you to approve an action before saving or changing a note, review the action and approve it only when you want the repository changed.

## Step 6 — Test the system

1. Open the ChatGPT Project.
2. Upload a photo of a devotional, service, or personal ministry note.
3. Confirm the author and entry type when asked.
4. Review the generated Markdown.
5. Approve the GitHub save when prompted.

The note will be saved under the appropriate personalized `notes/` folder.

## Step 7 — Automatic indexing

Whenever a note is committed under `notes/`, the **Rebuild Notes Index** workflow runs automatically. It executes:

`python tools/build-index.py`

If `INDEX.md` changes, the workflow commits the new index back to the repository.

## Need to change names later?

Run **Configure Church Notes System** again with the new values. Existing note files are not deleted. New personalized folders and instructions are generated from the latest setup values.

## ChatGPT plan details

See [CHATGPT-PLANS.md](CHATGPT-PLANS.md) for current Free, Plus, and Pro guidance and official OpenAI pricing links.
