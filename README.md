# GitHub Copilot for Azure Playground... with GitHub Codespaces!

<img src="docs/images/revised-rec.png" alt="Github Copilot for Azure" />

Hi developer 👋🏻!

This repo helps you test [Github Copilot for Azure](https://techcommunity.microsoft.com/t5/microsoft-developer-community/introducing-github-copilot-for-azure-your-cloud-coding-companion/ba-p/4127644) quickly using GitHub Codespaces.

All you need is to have three Codespace user secrets to download the latest version of the agent:

<img src="docs/images/Codespace user secrets.png" alt="Codespace user secrets to download the vsix" width="80%" style="text-align:center" />

- `PAT_FOR_VSIX`: You need a personal access token that has permission to read the content of the repo where the vsix is located.

<img src="docs/images/Permissions for the PAT.png" alt="Permissions for the PAT" width="80%" style="text-align:center" />

- `OWNER_FOR_VSIX`: The name of the organization where vsix is located.
- `REPO_FOR_VSIX`: The name of the repository where the vsix is located.

Please, make sure that you have a preference in your Codespaces environment to use the `Insiders` version instead of the stable version.

Once the extensions are installed the first time you we'll need to reload the window:

<img src="docs/images/Reload Windows because of GH Copilot extensions.png" width="50%" style="text-align:center" />

And you are ready to play!

<img src="docs/images/Testing Azure agent.png" width="50%" style="text-align:center" />

<img src="docs/images/ask azure.png" width="50%" style="text-align:center" />


Happy coding 🤖💙!