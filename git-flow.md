UPDATING CHANGES FROM COLLABORATOR

git checkout main 
git pull origin main



UPDATING PARENT BRANCH

make sure you have updated from collaborator first^^^
git checkout -b name-of-updated-branch (give a new name)
save changes
git add .
git commit -m "New Update"
git push origin name-of-updated-branch

in github hit compare & pull request
select "Base: develop" and select "Compare: name-of-updated-branch"
hit create pull request
hit "no reviews-request one" under Reviewers
type in reviewer

hit merge pull request
delete name-of-updated-branch if changes are successfully made to parent branch