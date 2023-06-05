function supergit
    set -l GIT "git --git-dir='$PWD/.git'"
    eval $GIT add .
    set commit_message (string join "" $argv)
    eval $GIT commit -m commit_message
    eval $GIT fetch
    eval $GIT pull
    eval $GIT push
end
