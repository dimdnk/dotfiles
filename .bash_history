find . -type d -name .git -exec sh -c "cd \"{}\"/../ && pwd && git fetch --prune" \;
find . -type d -name .git -exec sh -c "cd \"{}\"/../ && pwd && git pull" \;
git reset --soft HEAD~1
git push -f
ssh srv588656.hstgr.cloud
