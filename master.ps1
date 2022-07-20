param([String]$branchName) 

echo "git fetch -p"
git fetch -p
echo "git checkout master"
git checkout master
echo "git pull"
git pull

if($branchName)
{
  echo "branch -d $branchName"
  git branch -d $branchName
}

echo "git branch -a"
git branch -a
echo "git gc"
git gc
