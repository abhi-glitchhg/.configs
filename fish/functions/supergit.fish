function supergit
    set -l GIT "git --git-dir='$PWD/.git'"
    eval $GIT add .
    eval $GIT commit -m $argv
    eval $GIT fetch
    eval $GIT pull
    eval $GIT push
end
