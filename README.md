# Ubuntu dotfiles starter

This kit adds your Bash shortcuts and installs a small C++/Python coding environment on Ubuntu. It does not run a full system upgrade.

## Files

- `aliases.sh`: Bash shortcuts and the `mkcd` function.
- `packages.txt`: Ubuntu APT packages to install. One package name or `name=exact-version` per line; lines beginning with `#` are comments.
- `scripts/install-packages.sh`: installs the entries in `packages.txt` with APT.
- `scripts/setup-folders.sh`: creates `~/Projects`.
- `scripts/setup-git.sh`: sets Git's initial branch to `main` if unset.
- `scripts/setup-shell.sh`: adds the source line to `~/.bashrc`, backing it up before the first change.
- `install.sh`: prints each step, calls the corresponding script, and stops if a step fails.

Read and edit the files first. In an Ubuntu terminal, from the extracted folder, run:

```bash
bash install.sh
```

APT shows its normal confirmation before installing. Open a new Bash terminal afterward. Run `alias sau`, `git --version`, `g++ --version`, and `python3 --version` to check the result.

To pin one installation to an available version, first run `apt policy git` on the target PC and copy the complete version string shown there. Then change the `git` line in `packages.txt` to `git=THAT_EXACT_VERSION`. An exact version must be available from that PC's configured Ubuntu repositories; it may differ between Ubuntu releases. This installer does not place a package on hold, so later `sudo apt upgrade` can still update it.

Running the installer again is safe: APT skips already installed packages, the directory command is harmless, and the Bash source line is added at most once.

To add another type of setup, make a new script in `scripts/` and add one `run_step 'Description' filename.sh` line to `install.sh`.

Your original shortcuts may still be present directly in `~/.bashrc`. After confirming this kit works, remove those duplicate alias lines from `~/.bashrc` so you edit shortcuts in one place.

For syncing, put the extracted folder in your own private GitHub repository and clone it on each PC. After `git pull`, a new Bash terminal reads the latest `aliases.sh`; edit `packages.txt` and rerun `bash install.sh` to add packages.

The package list uses Ubuntu's APT. An Arch Linux PC needs its own package install section using pacman.
