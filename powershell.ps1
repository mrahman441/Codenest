# git command
# commit with message
function gc {
    $message = $args -join " "
    if (-not $message) { $message = "manual commit" }
    git commit -m "$message"
}
# add all and commit with message
function gac {
    git add .
    $message = $args -join " "
    git commit -m "$message"
}
function push { git push }
function pull { git pull }
function status { git status }
function add { git add . }
function branch { git branch }
function cout { git checkout $args }

# npm command
function nrd { npm run dev }