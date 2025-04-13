
# Install

- Clone repository:
```bash
git clone https://github.com/imposibrus/dotfiles.git; cd dotfiles
```
- Run `./install-configs.sh` for creating folders and linking config files
- Install [Oh My Fish!](https://github.com/oh-my-fish/oh-my-fish):
```bash
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
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

## Batch install on multiple machines with Ansible:
This sample playbook assumes you have sudo without password.

Create your Ansible inventory:
```bash
cd deploy
cp hosts.example.yml hosts.yml
```
Fill `hosts.yml` with your credentials.

Run Ansible Playbook:
```bash
ansible-playbook -i hosts.yml install.yml
```

To debug playbook, use `--step` and `--start-at-task` arguments.

