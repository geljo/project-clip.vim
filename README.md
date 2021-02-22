# (WIP!!!!)Project-clip 

This plugin is still even before alpha
Even the name might change in future!

Depends on FZF!

1. Run `:Projects`
First run might take a bit longer until all git projects are found 
2. Choose your project in fzf popup
3. Netrw is opening in chosen directory in a new tab
4. change your current working directory with `<leader>cd`

## settings

Currently only these 2 settings are available and required

```
let g:projects_dir = ['~/GIT']
let g:projects_cache = '~/.projects_cache'
```

- `g:projects_dir` = list of paths to search in for git projects
- `g:projects_cache` = specify custom location for project-cache file (holds only paths to dirs where an `.git` dir is found)

## Installation 

with plug:
 
```
Plug 'geljo/project-clip.vim'
```

Attention! This is working only on `*nix` systems. There is still 1 system call which will be replaced in future


## TOOD's

- [ ] add help text
- [ ] add some error handling
- [ ] add function to quickly switch projects
- [ ] add autocommand to set cwd to your buffers path
- [W] add custom action to open :Explore on project enter?!?
    - opening `:Explore` for now
- [ ] add ignore_list
- [ ] make default behaviour configurable (:tabedit, :split, :vsplit, etc.)
- [ ] make fzf window configurable
