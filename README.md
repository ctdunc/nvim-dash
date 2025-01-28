# nvim-dash
Simple tweaks for your neovim configuration that make the experience of
working on [Dash](https://github.com/plotly/dash) apps a little more enjoyable.

## Features
- JavaScript Syntax Highlighting in `clientside_callback`s. See the [blog post](https://www.connorduncan.xyz/blog/dash-clientside-treesitter.html).
- JavaScript Syntax Highlighting in dicts where they key is `function`. This is very useful when dealing with inline value formatters/renderers using ag-grid.

#### Before `nvim-dash`
![nvim-dash-before](https://github.com/user-attachments/assets/d8022f6d-4e11-435e-820d-8f6780ee53dc)
(This is also without TreeSitter running, so not exactly apples-to-apples, but the bias goes my way).

#### After `nvim-dash`
![nvim-dash-after](https://github.com/user-attachments/assets/3be25eb5-190c-4d27-b6e7-4c0857e08f3e)


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
