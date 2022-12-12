require("util")

vim.cmd("command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument")
map("n", "<Leader>f", "<CMD> lua _G.format() <cr>")

vim.call("glaive#Install")
vim.cmd(
	'Glaive codefmt google_java_executable="java -jar /home/prometheus/.config/nvim/java-format.jar"'
)
vim.cmd('Glaive codefmt luaformatterfiveone_executable="stylua"')

function _G.format()
	local command_map = {
		["typescriptreact"] = "FormatCode prettier",
		["lua"] = ':silent exec "!~/stylua %"',
	}
	if command_map[vim.bo.filetype] == nil then
		vim.api.nvim_command("FormatCode")
	else
		vim.api.nvim_command(command_map[vim.bo.filetype])
	end
end
