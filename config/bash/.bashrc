# ═══════════════════════════════════════════════════════════════════
# Unit-3 default .bashrc
# Personal overrides go in ~/.bashrc.local — never touched by updates.
# ═══════════════════════════════════════════════════════════════════

# Source system bashrc if it exists
[ -f /etc/bash.bashrc ] && . /etc/bash.bashrc

# Stop here if not running interactively
[[ $- != *i* ]] && return

# ─── Standard aliases ──────────────────────────────────────────────
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# ─── NieR-themed prompt ────────────────────────────────────────────
PS1='\[\033[38;2;110;42;42m\]▸\[\033[0m\] \[\033[38;2;70;63;46m\]\w\[\033[0m\] \[\033[38;2;50;45;36m\]·\[\033[0m\] '

# Animated cursor color (NieR aesthetic)
_nier_prompt_cmd() {
    printf '\033]12;#6e2a2a\007'
    sleep 0.06
    printf '\033]12;#c8b89a\007'
}
PROMPT_COMMAND='_nier_prompt_cmd'

# ─── Welcome banner (only on first interactive shell) ──────────────
if [[ -z "$NIER_DONE" ]] && [[ -x ~/.config/quickshell/nier-welcome.sh ]] && command -v figlet >/dev/null; then
    NIER_DONE=1
    export NIER_DONE
    ~/.config/quickshell/nier-welcome.sh
fi

# ─── User-specific overrides ───────────────────────────────────────
[ -f ~/.bashrc.local ] && . ~/.bashrc.local
