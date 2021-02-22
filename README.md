# (WIP!!!!)Project-clip 

This plugin is still even before alpha
Even the name might change in future!

## settings

Currently only these 2 settings are available

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

Attention! This is not working on not `*nix` systems. There is still 1 system call which will be replaced in future


## TOOD's

- [ ] add help text
- [ ] add some error handling
- [ ] add custom action to open :Explore on project enter?!?
- [ ] add ignore_list
- [ ] make default behaviour configurable (:tabedit, :split, :vsplit, etc.)
- [ ] make fzf window configurable
