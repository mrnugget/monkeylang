# [monkeylang.org](http://monkeylang.org)

This is the official website for Monkey

## Running locally

```
hugo serve -D --disableFastRender
```

## Adding a new implementation

Built your own Monkey? Add it to the list!

Create a PR in which you

1. Edit `content/_index.md`
2. At the bottom, add another `monkey-implementation`:

    ```markdown
    {{< monkey-implementation "YOUR-GITHUB-USERNAME" "NAME-OF-REPOSITORY" "LANGUAGE-IN-WHICH-YOU-IMPLEMENTED-IT">}}
    DESCRIPTION
    {{< /monkey-implementation >}}
    ```

    See the other implementations for examples.
3. Open a PR

After I merge the PR the site is auto-deployed.
