
# settings for the "bobthefish" theme:
set -g theme_nerd_fonts yes
set -g theme_display_ruby no
set -g theme_display_virtualenv no
set -g theme_display_docker_machine no
set -g theme_display_vagrant no
set -g theme_display_k8s_context no
set -g theme_display_hg no
set -g theme_display_user no
set -g theme_display_node yes
set -g default_user imposibrus
set -g theme_date_format "+%Y-%m-%d %H:%M:%S"
set -g theme_title_display_process yes
set -g theme_show_exit_status yes

[ -e ~/.aliases ]; and . ~/.aliases

function save_history --on-event fish_preexec
    history --save
end

# local untracked staff
[ -e ~/.localrc ]; and . ~/.localrc
