chcopy
======

chcopy copies file permissions from one file to another.

Do you lose time making file permission mistakes? I do.

Often I have the file permissions set perfectly on one file or directory, but can never remember the command I used to get there.

That's where chcopy comes in. It simply copies file permissions from one file to another:

### How to use

```
chcopy someFileWithGoodPermissions someFileWithBadPermissions
```

### How to install

There are lots of ways to install chcopy. Here's one simple way:

```
cd ~
git clone https://github.com/breck7/chcopy
echo "alias chcopy='~/chcopy/chcopy.sh'" >> ~/.bash_profile
source ~/.bash_profile
# now try it!
```

### Update

chmod on GNU/Linux has this built in:

```
chmod --reference=sourceFile targetFile
```
