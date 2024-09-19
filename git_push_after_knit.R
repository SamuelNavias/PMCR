# Save this as git_push_after_knit.R

# Function to automatically commit and push to GitHub
git_commit_and_push <- function(message = "Update knitted output") {
  system("git add -A")  # Stage all changes
  system(paste0('git commit -m "', message, '"'))  # Commit with a message
  system("git push origin main")  # Push changes to the 'main' branch (or replace with 'master')
}

# Call the function after knitting
git_commit_and_push("Auto-update: knitted document")