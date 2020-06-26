
# Install

- Clone repository:
```bash
git clone git@github.com:imposibrus/dotfiles.git; cd dotfiles
```
- Run `./install-configs.sh` for creating folders and linking config files
- Install [Oh My Fish!](https://github.com/oh-my-fish/oh-my-fish):
```bash
curl -L https://get.oh-my.fish | fish
```
- Install [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy):
```bash
npm i diff-so-fancy -g
```
- Create `~/.git_local` with Git user settings:
```git
[user]
        email = user@example.com
        name = username
```
- (_macOS only:_) Install Fira Code Nerd Font:
```bash
brew tap homebrew/cask-fonts
brew cask install font-fira-code-nerd-font
```
- (_macOS optional:_) Run `brew bundle` in home dir
