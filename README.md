# File Organizer

A Bash script that sorts the files in a folder into subfolders by file type.

## What it does

Given a messy folder, it creates a subfolder for each file extension ('pdf/', 'jpg/' 'txt/', ...) and moves each file into the right one. Files with no extension go into 'other/'.

## Requirements

-Bash (on Windows, install [Git for Windows](https://git-scm.com/download/win), which includes Git Bash)

## Usage

'''bash
# Organize the current folder
bash organize.sh

# Organize a specific folder
bash organize.sh path/to/folder

## How it works

Loops over every file in the target folder
Skips subfolders and the script itself
Extracts the extension and lowercases it
Creates the folder with 'mkdir -p' and moves the file with 'mv'

## Possible improvements

[ ] '--dry-run' mode to preview changes
[ ] Sort by date instead of type
[ ] Undo option

## Author

Mee - Brian Angaluki