# GitHub Action: Run ktlint

This action runs the lastest version of [ktlint](https://ktlint.github.io/) on pull requests to enforce best practices.

Based on [ScaCap implementation](https://github.com/ScaCap/action-ktlint).

## Example usage

```yml
name: reviewdog
on: [pull_request]
jobs:
  ktlint:
    name: Check Code Quality
    runs-on: ubuntu-latest

    steps:
      - name: Clone repo
        uses: actions/checkout@master
        with:
          fetch-depth: 1
      - name: ktlint
        uses: ScaCap/action-ktlint@master
        with:
          github_token: ${{ secrets.github_token }}
          reporter: github-pr-review # Change reporter
```
