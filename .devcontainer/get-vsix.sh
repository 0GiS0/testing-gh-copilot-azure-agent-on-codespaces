#!/usr/bin/env bash

# Get the JSON response from the GitHub API and save it to a file
curl -H "Authorization: token $PAT_FOR_VSIX" \
    -H "Accept: application/vnd.github.v3+json" \
    -s "https://api.github.com/repos/$OWNER_FOR_VSIX/$REPO_FOR_VSIX/releases" > /tmp/releases.json


# RELEASE_VERSION="v0.2.0-privatepreview"

# if the RELEASE_VERSION is set get the ASSET_ID for the specified version
if [ -n "$RELEASE_VERSION" ]; then

    echo "Getting the asset ID for the release version: $RELEASE_VERSION"

    ASSET_ID=$(jq -r --arg RELEASE_VERSION "$RELEASE_VERSION" '.[] | select(.tag_name == $RELEASE_VERSION) | .assets[0].id' /tmp/releases.json)
    # Store the latest release in /tmp/vscode-azure-github-copilot.vsix
    curl ${curl_custom_flags} \
        -L \
        -H "Accept: application/octet-stream" \
        -H "Authorization: Bearer ${PAT_FOR_VSIX}" \
        "https://api.github.com/repos/${OWNER_FOR_VSIX}/${REPO_FOR_VSIX}/releases/assets/${ASSET_ID}" -o "/tmp/vscode-azure-github-copilot.vsix"
else

    echo "Getting the asset ID for the latest release"

    # Extract the download URL for the first asset of the latest release
    ASSET_ID=$(jq -r '.[0].assets[0].id' /tmp/releases.json)

    # Store the latest release in /tmp/vscode-azure-github-copilot.vsix
    curl ${curl_custom_flags} \
        -L \
        -H "Accept: application/octet-stream" \
        -H "Authorization: Bearer ${PAT_FOR_VSIX}" \
            "https://api.github.com/repos/${OWNER_FOR_VSIX}/${REPO_FOR_VSIX}/releases/assets/${ASSET_ID}" -o "/tmp/vscode-azure-github-copilot.vsix"

fi