cmd_project-run_help() {
    cat <<_EOF
    project-start <project> 
         Start the available project.
_EOF
}

cmd_project-run() {
    # start project
    local project=$1
    [[ -n $project ]] || fail "Usage:\n $(cmd_project-run_help)"
     
    if [[ -d $project ]]; then 
         cd $project/
         jekyll serve --host 127.0.0.1
    else
        echo "There is no project like this" 
    fi
}
