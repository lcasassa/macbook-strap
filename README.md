# MacBook Setup

# Apple ID

Create an Account on the MacBook using your Rolls-Royce Apple ID.

If you have a RR issued iPhone, this should be `{firstname}.{lastname}@rolls-royce.com`.

If you do not have a RR issued iPhone, follow these steps to [create a new Apple ID](https://support.apple.com/en-us/HT204316) using your `@rolls-royce.com` email.

# Software

Install each of the following in order.

# Norton

Ask your manager to assign to you a norton licence. You will receive a link by email to download the installation file. Follow the installation process by executing the installer.

# Strap MacOS

This will make sure your disk is encrypted, OS up to date, install some developing software among other things. (to learn more check out: https://github.com/MikeMcQuaid/strap)

Open the Terminal (Application/Other/Terminal
```bash
mkdir -p ~/src
cd ~/src
git clone https://github.com/lcasassa/macbook-strap.git # if git is not installed, it will ask. Run this line again if it is the case.
cd macbook-strap
./run.sh
```
It will ask for the sudo password (your macos account password) and may request to restart several times. On restart keep executing `bash strap.sh` until you get: 
```
--> Your system is now Strap'd!
```

You can re-run run.sh as it is idempotent. It will check that all steps have not been done or undone and do them.

Please run run.sh once a week/month or so to make sure your system complies and is up to date.

### Google Chrome Extensions

Install the following extensions from the web store:

* [Redux Dev Tools](https://chrome.google.com/webstore/detail/redux-devtools/lmhkpmbekcpmknklioeibfkpmmfibljd?hl=en)
* [Postman](https://chrome.google.com/webstore/detail/postman/fhbjgbiflinjbdggehcddcbncdddomop?hl=en)
* [draw.io Desktop](https://chrome.google.com/webstore/detail/drawio-desktop/pebppomjfocnoigkeepgbmcifnnlndla?hl=en-GB)

### VS Code Extensions

Install the following extensions to align with development practices.

Run the following from a terminal. You may need to follow [this step](https://code.visualstudio.com/docs/setup/mac#_launching-from-the-command-line) to make `code` a a valid command.

```bash
# list of extensions to install
EXTENSIONS=(
    "DavidAnson.vscode-markdownlint"
    "dbaeumer.vscode-eslint"
    "eamodio.gitlens"
    "esbenp.prettier-vscode"
    "humao.rest-client"
    "ms-azure-devops.azure-pipelines"
    "ms-azuretools.vscode-azurestorage"
    "ms-azuretools.vscode-docker"
    "ms-kubernetes-tools.vscode-kubernetes-tools"
    "ms-mssql.mssql"
    "ms-python.python"
    "ms-vscode.azure-account"
    "ms-vscode.azurecli"
    "ms-vscode.csharp"
    "ms-vscode.go"
    "ms-vscode.powershell"
    "ms-vsts.team"
    "msazurermtools.azurerm-vscode-tools"
    "redhat.vscode-yaml"
)

# install extensions
for ext in "${EXTENSIONS[@]}";
  do
    echo "Installing extension: $ext"
    code --install-extension $ext
  done
```

## Upload SSH Key to Azure DevOps

To enable SSH access to Azure DevOps, [follow these steps](https://docs.microsoft.com/en-us/azure/devops/repos/git/use-ssh-keys-to-authenticate?view=azure-devops).

