git_status() {
  untracked=$(git status | grep 'Untracked files' 2> /dev/null)
  if [ -n "$untracked" ]; then
    echo "☠  "
  else
    to_commit=$(git status | grep 'nothing to commit (working directory clean)' 2> /dev/null)
    if [ -z "$to_commit" ]; then
      echo "☠  "
    fi
  fi
}

parse_git_branch ()
{
  result=$(git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/[\1]/')
  if [ -n "$result" ]; then
    echo "$result $(git_status)"
  fi
}

parse_host(){
  echo \[\033[0;32m\]\h
}

export PS1='\[\033[0;36m\]\w\[\033[00m\] $(parse_git_branch)\$ '
