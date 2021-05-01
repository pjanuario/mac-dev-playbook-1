# prompt_kubecontext() {
#         prompt_segment white black "k8s-`kubectl config current-context`/`kubectl config get-contexts --no-headers | grep '*' | awk '{print $5}'`"
# }
# ## Main prompt
# build_prompt() {
#   RETVAL=$?
#   prompt_status
#   prompt_dir
#   prompt_git
#   prompt_kubecontext
#   prompt_end
#
# }
# PROMPT='%{%f%b%k%}$(build_prompt) '

PROMPT='$fg_bold[blue][$fg[red]%t$fg_bold[blue]] $fg_bold[blue] [$fg[red]%~$(git_prompt_info)$fg[yellow]$(rvm_prompt_info)$reset_color$(kube_ps1)$fg_bold[blue]]$reset_color
 $ '
# git theming
ZSH_THEME_GIT_PROMPT_PREFIX="$fg_bold[green]("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_CLEAN="✔"
ZSH_THEME_GIT_PROMPT_DIRTY="✗"
