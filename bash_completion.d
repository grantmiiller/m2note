# The function that is called to autocomplete
_notenames()
{
    local cur prev opts
    # The special variable to show what the tab should reply as
    COMPREPLY=()

    # The current word, for instance:
    # `command prev cur`
    cur="${COMP_WORDS[COMP_CWORD]}"

    # The previous word, for instance:
    # `command prev cur`
    prev="${COMP_WORDS[COMP_CWORD-1]}"

    # The options to compare the word against to autocomplete
    opts=$(m2note --getlist)

    COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
    return 0
}

complete -F _notenames m2note

if [[ -n $M2NOTE_ALIAS ]]; then
  complete -F _notenames $M2NOTE_ALIAS
fi
