# rsync-deploy-action
Action to deploy file-s via rsync to a remote server

## Usage
```yaml
uses: D3rHase/rsync-deploy-action@latest
with:
  HOST: ${{secrets.HOST}}                             # Remote server address / ip - Required: true
  PORT: ${{secrets.PORT}}                             # Remote server port -  Default: 22 - Required: false
  USER: ${{secrets.USER}}                             # Remote server user - Required: true
  PRIVATE_SSH_KEY: ${{secrets.PRIVATE_SSH_KEY}}       # Private ssh key registered on the remote server - Required: true
  REPOSITORY_PATH: ${{secrets.REPOSITORY_PATH}}       # Repository path of the file-s you want to upload - Default: * - Required: true
  SERVER_PATH: ${{secrets.SERVER_PATH}}               # Server destination / path, where the file-s will be uploaded to - Default: ~/ - Required: false
```
