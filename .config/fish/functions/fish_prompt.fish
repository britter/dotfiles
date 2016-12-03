function fish_prompt
    set_color $fish_color_cwd
    echo -n (prompt_pwd)
    echo -n (git-radar --fish --fetch)
    set_color normal
    echo -n ' > '
end

function hg_branch
    hg st > /dev/null 2>&1
    if [ $status = 0 ]
      set branch_name (hg branch)
      set_color 808080
      echo -n " hg:($branch_name)"
      set_color $fish_color_cwd
    end
end
