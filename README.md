# rails-starter
1. clone this repo
1. move the directory to the name you want to use
1. cd to the new directory
1. remove the git origins
```
git remote remove origin
```
1. update the config/database.yml to have the names of your database. Replace the sample_* database names
1. create a new repo in github
1. remove .git folder
1. overwrite the git set up git, uri is like: git@github.com:jsparling/rails-starter.git
```
rm -rf .git
git init
git add .
git commit -m "Initial commit"
git remote add origin <github uri>
git push -u --force origin master
```
1. install overcommit
```
overcommit --install
```
