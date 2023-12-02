# Ansible workstation setup
This is a playbook to setup my workstation with ansible.


## Usage
```bash
# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/jan.ulferts/.zprofile && eval "$(/opt/homebrew/bin/brew shellenv)"

# Install ansible
brew install ansible

# add personal preferences
cat <<EOF > host_vars/localhost.yml
---
user: jan.ulferts
git_name: Jan Ulferts
git_email: jan.ulferts@...
git_signing_key: ....
EOF

ansible-playbook playbook.yml
```
