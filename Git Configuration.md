# Table of Contents
- [Table of Contents](#table-of-contents)
  - [Git configuration <a name="gitintroduction"></a>](#git-configuration-a-name%22gitintroduction%22a)
  - [Configuring the SSH keys](#configuring-the-ssh-keys)
  - [Edit SSH configuration](#edit-ssh-configuration)
  - [Edit Git configuration](#edit-git-configuration)

## Git configuration <a name="gitintroduction"></a>

Working with git using multiple accounts might be tricky.

There are three things that needs to be aligned:

* The ssh keys
* The ssh configuration
* The git repository configuration
* 
### Configuring the SSH keys <a name="configuringsshkeys"></a>

Create a key for each account:
```
ssh-keygen -t rsa
```
Give it a name and an empty passphrase. In my case I created two keys, one for Bitbucket and another for Github:
* eduardo.mac.bitbucket
* eduardo.mac.github

but you can use any name that suits you.

## Edit SSH configuration

Edit the ~/.ssh/config file to associate the alias in git with the keys you just created:

```
Host bitbucket.org-eduardoshanahan
    Hostname        bitbucket.org
    IdentityFile    ~/.ssh/eduardo.mac.bitbucket
    IdentitiesOnly  yes
    PreferredAuthentications publickey

Host github.com-eduardoshanahan
    Hostname        github.com
    IdentityFile    ~/.ssh/eduardo.mac.github
    IdentitiesOnly  yes
    PreferredAuthentications publickey
```

Remember to replace the 'eduardo.mac.bitbucket' and 'eduardo.mac.github' with the names you selected when creating the keys.

## Edit Git configuration

Once you have your local git repository created and committed, and your remote is setup as well, you need to edit the local Git configuration.

Edit the file .git/config, and put the following details:

```
[remote "github"]
	url = ssh://git@github.com-eduardoshanahan/eduardoshanahan/python.git
	fetch = +refs/heads/*:refs/remotes/github/*
[remote "bitbucket"]
	url = ssh://git@bitbucket.org-eduardoshanahan/eduardoshanahan/python.git
	fetch = +refs/heads/*:refs/remotes/bitbucket/*
[user]
	name = Eduardo Shanahan
	email = contact@eduardoshanahan.com
```

Again, you need to replace the key names and the git configuration for 'Host' with the values you selected in the previous step.
