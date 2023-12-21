param([String]$branchName) 

Write-Host "git fetch -p" -ForegroundColor Cyan
git fetch -p
Write-Host "git checkout master" -ForegroundColor Cyan
git checkout master
Write-Host "git pull" -ForegroundColor Cyan
git pull

if($branchName)
{
  Write-Host "git branch -d $branchName" -ForegroundColor Cyan
  git branch -d $branchName
}

Write-Host "git --no-pager branch -a" -ForegroundColor Cyan
git --no-pager branch -a
Write-Host "git clean -fd" -ForegroundColor Cyan
git clean -fd
Write-Host "git gc" -ForegroundColor Cyan
git gc
