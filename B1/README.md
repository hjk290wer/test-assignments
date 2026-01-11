# B1 — clean_old_logs.sh

Simple Bash script to find and remove old `.log` files with user confirmation.

---

## What it does

- Accepts a directory path and number of days
- Finds `.log` files older than the specified number of days
- Prints the list of matching files
- Asks for confirmation before deletion
- Deletes files only if confirmed

---

## Usage

./clean_old_logs.sh <log_directory> <days>

---

## Example

./clean_old_logs.sh /var/log 30

---

## Confirmation flow

The script will ask:

Delete these files? (y/n):

- `y` — delete listed files
- `n` — exit without deleting anything

---

## Notes

- File age is determined using modification time (`find -mtime`)
- Files are never deleted without explicit confirmation
- Make the script executable before running:

chmod +x clean_old_logs.sh
