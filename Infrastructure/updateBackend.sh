cd ..
git pull
swift build --configuration release
supervisorctl stop youtube-lite-rest
supervisorctl start youtube-lite-rest
supervisorctl status youtube-lite-rest