#!/bin/bash
# Script launches tmux sessions for each directory in `PROJECTS`.
# The name of each session is looked up from the dirname of directories.
# If a session with a same name is already running, it is not modified or restarted.

# List of project root folders.
# Put new projects here.
PROJECTS=(
)

# Crash if some project directory is not a directory.
for DIR in "${PROJECTS[@]}"; do
  if [ ! -d "$DIR" ]; then
    echo "Error: directory $DIR does not exist."
    exit 1
  fi
done

for PROJECT_DIR in "${PROJECTS[@]}"; do
  SESSION_NAME=$(basename "$PROJECT_DIR")

  # Check if session already exists.
  tmux has-session -t "$SESSION_NAME" 2>/dev/null
  if [ ! $? -eq 0 ]; then
    # Start new tmux session in detached mode.
    tmux new-session -d -s "$SESSION_NAME" -c "$PROJECT_DIR"

    # Split the window horizontally.
    tmux split-window -h -t "$SESSION_NAME" -c "$PROJECT_DIR"

    echo "Started session '$SESSION_NAME' in '$PROJECT_DIR'."
  else
    echo "Session '$SESSION_NAME' is already running."
  fi
done
