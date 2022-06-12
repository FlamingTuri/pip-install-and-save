# pip-install-and-save

Utility to install and immediately save python dependencies in requirements file.

## Usage

```bash
# saves library to requirements.txt
pipins requests
# saves library to custom requirements.dev.txt
pipins flake8 requirements.dev.txt
```

## Install

Run `installer-for-bash.sh` or `installer-for-zsh.sh` script. The changes will be loaded from the next terminal session you will open.

## Update

Just pull the git repository to have the latest project version.

## Uninstall

For bash remove the following lines from your `.bashrc`:

```bash
# get git branch name
if [ -f "/path/to/pip-install-and-save.sh" ]; then
    source "/path/to/pip-install-and-save.sh"
fi
```

For zsh remove the following lines from your `.zshrc`:

```bash
# get git branch name
if [ -f "/path/to/pip-install-and-save.sh" ]; then
    autoload bashcompinit && bashcompinit
    emulate sh -c "/path/to/pip-install-and-save.sh"
fi
```

## License

[GPL-3.0](LICENSE)
