# GitHub Copilot for Azure Playground... with GitHub Codespaces!

<img src="docs/images/revised-rec.png" alt="Github Copilot for Azure" />

Hi developer 👋🏻!

This repo helps you test Github Copilot for Azure quickly using GitHub Codespaces.

All you need is to have three Codespace user secrets to download the latest version of the agent:

<img src="docs/images/Codespace user secrets.png" alt="Codespace user secrets to download the vsix">

- `PAT_FOR_VSIX`: You need a personal access token that has permission to read the content of the repo where the vsix is located.

<img src="docs/images/Permissions for the PAT.png" alt="Permissions for the PAT">

- `OWNER_FOR_VSIX`: The name of the organization where vsix is located.
- `REPO_FOR_VSIX`: The name of the repository where the vsix is located.

On the other hand, make sure that you have a preference in your Codespaces environment to use the `Insiders` version instead of the stable version.

And you are ready to play!

Happy coding 🤖💙!