#!/bin/bash
set -e

# Define the drop-in directory and file path
DROPIN_DIR="/etc/systemd/system/docker.service.d"
DROPIN_FILE="$DROPIN_DIR/override.conf"

# Create the drop-in directory if it doesn't exist
if [ ! -d "$DROPIN_DIR" ]; then
    echo "Creating directory: $DROPIN_DIR"
    sudo mkdir -p "$DROPIN_DIR"
fi

# Write the override configuration
echo "Writing drop-in file to $DROPIN_FILE"
sudo tee "$DROPIN_FILE" > /dev/null <<EOF
[Service]
ExecStartPre=/bin/sleep 30
EOF

# Reload systemd to pick up changes
echo "Reloading systemd daemon..."
sudo systemctl daemon-reload

# Optionally restart the Docker service to apply changes immediately
echo "Restarting docker service..."
sudo systemctl restart docker.service

echo "Drop-in override added successfully."
