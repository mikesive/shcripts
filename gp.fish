# Utility for pushing new branches to git remote

function gp
  set gpo (git push 2>&1)

  if string match -q -r 'fatal: The current branch .* has no upstream branch\.' $gpo
    set push_command (string match -r 'git push --set-upstream origin .*$' $gpo)
    commandline -a $push_command
  end
end
