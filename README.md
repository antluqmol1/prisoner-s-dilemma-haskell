# Prisoner's Dilemma Haskell
# Getting started

1. Do git clone of this repository in some directory of our local host
2. Do cd to the directory prisoner-s-dilemma-haskell, here We will see the necessary files for running the app

# Installs 

# Setup

## Execution 
- Para ejecutarlo desde la terminal/cmd, estando situado en la carpeta con el proyecto: 
    runhaskell main.hs
- Para ejecutarlo desde ghc:
    :l main.hs

## Developers
- Antonio Manuel Luque Molina
- Miguel Vázquez De la Rubia

# Git branches

when working on a new feature or specific changes/fixes, We should make our own branch.<br>
The name of the branch should reflect who is working on it, and what it aims to implement

> **Example:**
>
> - Branch Name: `Antonio-algorithms`<br>
> - here, Antonio is working on algorithms of the Prisoner's dilemma.<br>

NB! when making a new branch, make sure We are at the correct branch We want to branch from<br>
if We want to branch from the main branch, make sure We are at main, or move there with `git checkout main`

### how to make and push to new branch

1. make a branch `git branch [our branch name]`
2. checkout the branch `git checkout [our branch name]`
3. make our first commit
4. make first push and set upstream branch at the same time using `git push -u origin [our branch name]`
5. step 4 makes sure that next time We do `git push` We will push to this branch, and not to the previous upstream branch (default is `main`)

### Merge branch back to main/other branches

1. Checkout the branch We want to merge into using f.ex. `git checkout main`.
2. Now do `git merge [our branch]`, where `[our branch]` is the branch with the changes that We want merged with main.

### How to merge to my local project the changes that other made in the main branch

1.  cd to our path of the project, for example: `cd ~\Desktop\4 TI\PD\Mi_Proyecto_Haskell`
2.  Fetch the latest changes from Github: `git fetch origin`
3.  Pull the changes into our local main branch: `git pull origin main`
    #### -> If conflicts, for example: error: `
        our local changes to the following files would be overwritten by merge:
            frontend/src/App.js, frontend/src/components/FrontPage.js
        Please commit our changes or stash them before We merge. Aborting. Updating 890515c2..1f0fda69`
    We can stash our changes, Stash if We're in the middle of something and not ready to commit. We can always apply our stashed changes after pulling the updates from main.
    We can do that doing, for example: `git add frontend/src/App.js`, `git add frontend/src/components/FrontPage.js` and `git stash push -m "Describe our changes"`
    And afther that We can Pull the Latest changes from main: `git pull origin main`
4.  Once conflicts solved, We can go to our branch, for example: `git checkout antonio-frontend`
5.  And now, merge the changes from main: `git merge main`
