# Dotfiles

Personal dotfiles managed with a bare git repository.

## Installation

### 1. Clone the repo

Clone this repo to any location except `~/.dotfiles`.

### 2. Install dependencies (if needed)

```sh
sudo sh /path/to/dotfiles/.dot_utils/install_dependencies.sh
```

### 3. Bootstrap

```sh
sh /path/to/dotfiles/.dot_utils/bootstrap.sh
```

### 4. Switch to zsh

```sh
exec zsh
```

or change your default shell:

```sh
chsh -s $(which zsh)
```

---

Alternatively, installation in a single command:

```sh
git clone git@github.com:sakeof-capy/dotfiles.git /tmp/dotfiles && \
sudo sh /tmp/dotfiles/.dot_utils/install_dependencies.sh        && \
sh /tmp/dotfiles/.dot_utils/bootstrap.sh                         ; \
rm -rf /tmp/dotfiles
```

Switch to `zsh`:

```sh
exec zsh
```

Or change your default shell to `zsh`:

```sh
chsh -s $(which zsh)
```
