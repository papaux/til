#!/bin/bash

# Name of the virtual environment directory
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
VENV_DIR="$SCRIPT_DIR/.venv"
REQ_FILE="$SCRIPT_DIR/requirements.txt"

# Function to create a new virtual environment
create_venv() {
    echo "Creating virtual environment in $VENV_DIR..."
    python3 -m venv "$VENV_DIR"
}

# Function to activate the virtual environment
activate_venv() {
    source "$VENV_DIR/bin/activate"
    echo "Activated virtual environment."
}

# Function to update tools inside the venv
update_venv_tools() {
    echo "Updating pip, setuptools, and wheel..."
    pip install --upgrade pip setuptools wheel
}

# Function to install requirements if the file exists
install_requirements() {
    if [ -f "$REQ_FILE" ]; then
        echo "Installing dependencies from $REQ_FILE..."
        pip install -r "$REQ_FILE"
    else
        echo "No $REQ_FILE found. Skipping dependency installation."
    fi
}

# Main flow
if [ ! -d "$VENV_DIR" ]; then
    create_venv
    activate_venv
    update_venv_tools
    install_requirements
else
    echo "Activating virtual environment."
    activate_venv
    update_venv_tools
fi


