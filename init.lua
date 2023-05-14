local compiler = 'yue'

local info = debug.getinfo(1, 'S')
local init_dir = info.source:gsub([=[[^/]*%.lua]=], ''):gsub('^@', '')

if init_dir:match('["]') then
	error('init file path must not contain quotes')
end

if not vim.fn.executable(compiler) then
	error(string.format('could not find compiler "%s"', compiler))
end

vim.cmd(string.format('silent !%s "%s"', compiler, init_dir))

local init_yue = init_dir .. 'nvim.lua'
local init, err = loadfile(init_yue)
if err then
	error(string.format('failed to load %s: %s', init_yue, err))
end
init()
