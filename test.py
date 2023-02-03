import git

repo_dir = "hello-world-1"
commit_message = "Pushing from python code"
branch_name = "anudeep_test2"
username = "anudeepedu@gmail.com"
password = "Oridevvuda@886"

repo = git.Repo(repo_dir)
repo.git.add(A=".")
repo.index.commit(commit_message)

# Option 1: Set up remote tracking branch
repo.git.branch(branch_name, "origin/" + branch_name, "--set-upstream")

remote = repo.remote("origin")
remote.set_url("https://" + username + ":" + password + "@github.com/OWNER_NAME/REPO_NAME.git")
remote.push()

# Option 2: Specify upstream branch when pushing
repo.remote("origin").push(branch_name, "--set-upstream")