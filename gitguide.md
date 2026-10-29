# Ubuntu Basic Setup

A simple installer for my Ubuntu packages, project folder, and Bash aliases.

## Set up GitHub SSH on a new PC

Check for an existing key:

```bash
ls ~/.ssh/*.pub
```

Create ssh key:

```bash
ssh-keygen -t ed25519 -C "YOUR_GITHUB_EMAIL"
```

Display your public key:

```bash
cat ~/.ssh/id_ed25519.pub
```

Copy the output into [GitHub > Settings > SSH keys](https://github.com/settings/keys) under **New SSH key**.

Test the connection:

```bash
ssh -T git@github.com
```

```bash
git config --global user.name "YOUR_NAME"
git config --global user.email "YOUR_GITHUB_EMAIL"
```