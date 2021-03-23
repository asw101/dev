echo '# git config'

echo 'cache git credentials for 21 days (in seconds).'
git config --global credential.helper 'cache --timeout=1814400'

git config --global user.email "user@example.com"
git config --global user.name "User Name"

