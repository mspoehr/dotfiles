batdiff() {
    git diff --name-only --diff-filter=d | xargs bat --diff
}

loggly() {
    /Users/michaelspoehr/tailclient-1.0.5/bin/livetail -bc 49 -tc 39 $@
}

dexssh() {
    ssh -l dexter -A $@.dexterlive.com
}

notify() {
    eval $@
    curl "localhost:8700/cmd?err=$?"
    echo 
}

repeat() {
    for i in `seq $1`; do ${@:2}; done
}

retry() {
    until eval $@; do
      sleep 1
    done
}

hours() {
    rvm ruby-2.6.3 --summary do hours "$@"
}
