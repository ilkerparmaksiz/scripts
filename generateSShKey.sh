echo "This will help you to generate SSH-Key "
read -p "Please enter your git hub email" email
ssh-keygen -t rsa -b 4096 -C "$email"
echo "Starting the ssh-agent in the background"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
echo "Please copy the following code to your github, go to settings/SSH and GPG keys"
cat ~/.ssh/id_ed25519.pub
