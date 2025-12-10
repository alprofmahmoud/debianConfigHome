function fish_prompt
    # Git info function
    set -l git_branch ""
    if git rev-parse --is-inside-work-tree >/dev/null 2>&1
        set git_branch (git branch 2>/dev/null | grep '^*' | colrm 1 2)
        set git_section (set_color -b 8ea254)(set_color black)" \ue0a0 $git_branch "(set_color normal)(set_color 8ea254)""(set_color normal)
    else
        set git_section ""
    end
    
    # User section (orange background)
    echo -n (set_color -b d08770)(set_color black)" $USER "(set_color normal)
    
    # Arrow separator
    echo -n (set_color d08770 -b 4c4c4c)""(set_color normal)
    
    # Directory section (gray background)
    echo -n (set_color -b 4c4c4c)(set_color d8dee9)" "(prompt_pwd)" "(set_color normal)
    
    # Git section (if in git repo)
    if test -n "$git_branch"
        echo -n (set_color 4c4c4c -b 8ea254)""(set_color normal)
        echo -n (set_color -b 8ea254)(set_color black)" \ue0a0 $git_branch "(set_color normal)
        echo -n (set_color 8ea254)""(set_color normal)
    else
        echo -n (set_color 4c4c4c)""(set_color normal)
    end
    
    # Lambda prompt
    echo -n " λ "
end
