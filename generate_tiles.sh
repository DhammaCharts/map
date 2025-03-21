#!/bin/bash

# Prompt for image name
read -p "Enter the image name (e.g., 4NT): " img_name

# Define paths
image_path="images/${img_name}.png"
tile_path="tiles/${img_name}"

# Check if the image file exists
if [[ ! -f "$image_path" ]]; then
    echo "Error: File $image_path not found."
    exit 1
fi

# Extract image dimensions
read width height <<< $(file "$image_path" | grep -o '[0-9]\+ x [0-9]\+' | awk '{print $1, $3}')

# Run vips command
vips dzsave "$image_path" "$tile_path" --layout google --centre --suffix .png --tile-size 256 --vips-progress

# Generate URL
url="https://dhammacharts.org/map/m-t.html?n=tiles/${img_name}&w=${width}&h=${height}"

# Append URL to README.md
echo "- $url" >> README.md
echo "URL appended to README.md"
