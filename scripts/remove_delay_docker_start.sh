#!/bin/bash
set -e

# Define the path to the override file
DROPIN_FILE="/etc/systemd/system/docker.service.d/override.conf"

if [ -f "$DROPIN_FILE" ]; then
    echo "Removing drop-in file: $DROPIN_FILE"
    sudo rm "$DROPIN_FILE"
    
    # Reload systemd to apply removal of the override
    echo "Reloading systemd daemon..."
    sudo systemctl daemon-reload
    
    # Optionally restart Docker service
    echo "Restarting docker service..."
    sudo systemctl restart docker.service

    echo "Drop-in override removed successfully."
else
    echo "No drop-in override found at $DROPIN_FILE."
fi
