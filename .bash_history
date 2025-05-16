find . -type f -print0 | xargs -0 dos2unix
find . -type d -name .git -exec sh -c "cd \"{}\"/../ && pwd && git fetch --prune" \;
find . -type d -name .git -exec sh -c "cd \"{}\"/../ && pwd && git pull" \;
find . -name .git -print -execdir git fetch --prune \;
find . -name .git -print -execdir git pull \;
git clean -d  -fx -f
git reset --soft HEAD~1
git push -f
