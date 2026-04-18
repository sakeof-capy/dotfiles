# Dotfiles

Personal dotfiles managed with a bare git repository.

## Installation

### 1. Clone the repo to `/tmp`

```sh
git clone git@github.com:sakeof-capy/dotfiles.git /tmp/dotfiles
```

### 2. Install dependencies (if needed)

```sh
sudo sh /tmp/dotfiles/.dot_utils/install_dependencies.sh
```

### 3. Bootstrap

```sh
sh /tmp/dotfiles/.dot_utils/bootstrap.sh
```

### 4. Cleanup

```sh
rm -rf /tmp/dotfiles
```

### 5. Switch to zsh

```sh
exec zsh
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
