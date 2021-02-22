let g:projects_dir = ['~/GIT']
let g:projects_cache = '~/.projects_cache'

function! PopItem(l, i)
    let new_list = deepcopy(a:l)
    call remove(new_list, a:i)
    return new_list
endfunction

function! FindProjects()
    let l:projects = []
    for dir in g:projects_dir
        let l:temp_list = split(system('find ' . expand(dir) . ' -type d -name .git' ), '\n')
        for path in l:temp_list
            let l:path = split(expand(path), '/')
            let l:path_string = join(  PopItem(l:path, '-1'), '/')
            call add( l:projects, '/' . expand(l:path_string) )
        endfor
    endfor
    return l:projects
endfunction


function! RefreshProjectsCache()
    call writefile( FindProjects(), expand(g:projects_cache), 'b')
endfunction



function! GetProjects()
    if !empty( expand(glob(expand(g:projects_cache))) )
        return readfile(expand(g:projects_cache))
    else
        echo "No Projects in Cache found. Refreshing..."
        call RefreshProjectsCache()
        return readfile(expand(g:projects_cache))
    endif
endfunction

nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
nnoremap <leader>pp Projects<CR>
nnoremap <leader>pi ProjectsCacheRefresh<CR>

command! ProjectsCacheRefresh call RefreshProjectsCache()
command! Projects call fzf#run(fzf#wrap({'source': GetProjects(), 'sink': 'tabedit'}))

