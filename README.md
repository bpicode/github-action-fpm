# github-action-fpm

Github action to build packages for multiple platforms using [fpm](https://github.com/jordansissel/fpm).

## Example

```
name: Example workflow yml

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1
    - name: Package
      uses: bpicode/github-action-fpm@master
      with:
        fpm_args: './build'
        fpm_opts: '--debug -n mypackage -t deb -s dir'
```
## Inputs and Outputs

See [action.yml](action.yml).

## Feedback, Suggestions, Contributions, Known Limitations

Feel free to file an issue, open a pull request, etc.
