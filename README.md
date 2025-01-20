# nvim-dash
Simple tweaks for your neovim configuration that make the experience of
working on [Dash](https://github.com/plotly/dash) apps a little more enjoyable.

## Features
Right now, this is pretty barebones. If there's more fancy stuff I want to add in the future,
I'll do it here.
- JavaScript Syntax Highlighting in `clientside_callback`s. See the [blog post](https://www.connorduncan.xyz/blog/dash-clientside-treesitter.html).

## Dependencies
`nvim-dash` requires [`nvim-treesitter`](https://github.com/nvim-treesitter/nvim-treesitter) with `python` support.
You can install it with `:TSInstall python`.

## Installation
`nvim-dash` only supports `lazy.nvim` and doing it yourself. It will probably work with other package managers,
but I haven't tried it. 
If you do use another package manager successfully, please let me know, I'll add it to the list.

<details>
    <summary>lazy.nvim</summary>

```lua
{
    'ctdunc/dash-nvim',
}
```

</details>

<details>
    <summary>diy</summary>

copy `queries/python/injections.scm` to `$NVIM_CONFIG_LOCATION/queries/python/injections.scm`

</details>
