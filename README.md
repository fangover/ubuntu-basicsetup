## Install

```bash
git clone git@github.com:fangover/ubuntu-basicsetup.git
cd ubuntu-basicsetup
bash install.sh
```

The installer runs the scripts in `scripts/` to install packages from `packages.txt`, create `~/Projects`, and add shortcuts to `~/.bash_aliases`.

Open a new terminal to use the aliases, or run:

```bash
source ~/.bash_aliases
```

## Customize

- `packages.txt` > Ubuntu packages to install
- `scripts/aliases.sh` > Bash shortcuts
- `install.sh` > which steps run and in what order