# common-tools

Set of common tools that are used in most of my repos.
I find my self setting up repos for one thing or another and doing the same
set-up over and over. So I started this repo to share the tooling across
the repos and in the new repo that I start. Here are the thing that I have
learn doing this.

[![MegaLinter](https://github.com/dschveninger/common-tools/workflows/MegaLinter/badge.svg?branch=main)](https://github.com/dschveninger/common-tools/actions?query=workflow%3AMegaLinter+branch%3Amain) [![Codacy Badge](https://api.codacy.com/project/badge/Grade/5e8bce49e0df4be8a880f2df02759d88)](https://app.codacy.com/gh/dschveninger/common-tools/dashboard?utm_source=github.com&utm_medium=referral&utm_content=dschveninger/common-tools&utm_campaign=Badge_Grade)

## New repo set-up steps

1. MegaLinter
   1. Create .mega-linter.yml using a copy from another repo. Now using this repo's file.
      TODO: work on share megalinter config
   2. update .gitignore for
      1. report/
   3. Copy .github/linters files from here to new repo and review settings.
2. Create .github/workflow directory. For workflow folder.
3. Create TODO.md
4. Update README.md
   1. Copy Badges
      1. Mega Linter
      2. Codacy
      3. License
5. Add common-tools using git submodule command

   ```cmd
   git submodule add https://github.com/dschveninger/common-tools
   ```

6. include the *.mk file from mk directory in nc-common-tools

   ```make
   COMMON_DIR ?= common-tools
   -include $(COMMON_DIR)/mk/megalinter.mk
   # Optional targets
   # TODO coming soon
   ```
