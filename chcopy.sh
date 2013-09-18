# paste this into your bash profile:
# alias chcopy='~/chcopy/chcopy.sh'
# update the path to point to this file
chcopy ()
{
  sourceFile=$1
  targetFile=$2
  string=`ls -l $sourceFile`
  userPermissions="${string:1:3}"
  groupPermissions="${string:4:3}"
  allPermissions="${string:7:3}"
  userPermissions=${userPermissions/-/}
  groupPermissions=${groupPermissions/-/}
  allPermissions=${allPermissions/-/}
  chmod o=$allPermissions $targetFile
  chmod g=$groupPermissions $targetFile
  chmod u=$userPermissions $targetFile
}
chcopy $1 $2
