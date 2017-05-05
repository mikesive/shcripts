# Copy 'delete all non-master branches' to cmd line

function gbd
  git checkout master
  set branches (git branch)
  set filtered_branches (string replace -a -r '(master|staging|production|development|\*)' '' $branches)
  commandline -a "git branch -D $filtered_branches"
end
