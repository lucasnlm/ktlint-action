# GitHub Action: Run ktlint

This action runs the lastest version of [ktlint](https://ktlint.github.io/) on pull requests to enforce best practices.

Baseed on [ScaCap implementation](https://github.com/ScaCap/action-ktlint).

## Example usage

```yml
name: Project
on: [pull_request]
jobs:
  ktlint:
    name: Check Code Quality
    runs-on: ubuntu-latest

    steps:
      - name: Clone PR
        uses: actions/checkout@v1
        with:
          fetch-depth: 1
      - name: ktlint
        uses: lucasnlm/ktlint-action@master
```
