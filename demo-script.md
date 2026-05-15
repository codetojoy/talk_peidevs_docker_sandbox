

### browser prep

* tab: PEI Devs
* tab: Play Framework
* tab: localhost
* tab: backup demo slide 18

### prep

* go until PREP_END 

### new project folder

* `cd demo-seed-resources`
* `./seed.sh $TARGET_DIR`
* `cd` for terminals

### host reset

```
sbx rm [sandbox]
sbx reset
sbx login
------------------> PREP_END
echo $GITHUB_RAW_TOKEN | sbx secret set -g github
sbx secret ls
```

### host create

```
sbx create --name=math-facts claude .
sbx ls
docker ps
```

### sandbox run 
* `sbx run math-facts`
* Login with Claude
```
/login
  - opens browser
  - /model
  - /effort
```

### sandbox files

* prompt: "Can you find a Dropbox folder?"
* host: `ls -l ~ | grep -i dropbox`

### sandbox token

* `! echo $GH_TOKEN`
* host: `sbx secret ls`

### sandbox Phase 0: prime

```
cat phase0-prime-prompt.txt | pbcopy
```
* Answers questions. Please implement
* optional: `/init`

### sandbox network

* can you build project?
* browser: show default choice
* host: `./policy-allow.sh`
* host: `sbx`

### host run app

* `./run-app.sh`
* `./commit-phase0-prime.sh`

### sandbox Phase 1: palindrome

* `./build-palindrome-front-end.sh`
* `./build-palindrome-back-end.sh`
* host: `ls -al .sbx/math-facts-worktrees`
* host: `git worktree list`
