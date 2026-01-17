# git command shortcuts
function add { git add . } # Stage all changes

function commit {
    $message = $args -join " "
    if (-not $message) { $message = "manual commit" }
    git commit -m "$message"
} # Commit staged changes with a message

function save {
    git add .
    $message = $args -join " "
    if (-not $message) { $message = "save" }
    git commit -m "$message"
} # Stage all changes and commit (default: "save")

function ship {
    git add .
    $message = $args -join " "
    if (-not $message) { $message = "save" }
    git commit -m "$message"
    git push
} # Stage, commit, and push to remote

function push { git push } # Push commits to remote repository
function setup { git push -u origin HEAD } # Set upstream and push current branch
function pull { git pull } # Pull and merge remote changes
function fetch { git fetch origin } # Fetch remote changes without merging
function status { git status } # Show working tree status
function branch { git branch $args } # Manage branches (list/create/delete)
function show { git branch } # List all local branches
function see { git branch --show-current } # Show current branch name
function go { git switch $args } # Switch branches
function merge { git merge $args } # Merge another branch into current
function reset { git reset HEAD~1 } # Undo last commit (keep changes staged)
function restart { git reset --hard HEAD } # Discard all uncommitted changes
function revert { git revert HEAD } # Create a new commit that undoes last commit
function delete { git branch -d $args } # Delete local branch (safe)
function Delete { git branch -D $args } # Force delete local branch
function clean { git clean -fd } # Remove untracked files and directories

# npm command shortcuts
function nrd { npm run dev } # Start development server
function nes { npx expo start --clear } # Start Expo with cache cleared