require("util")

require("telescope").load_extension "file_browser"
require("telescope").load_extension "projects"

map("n","<Leader><Leader>",":Telescope find_files hidden=true <cr>")
map("n","<Leader>e",":Telescope file_browser <cr>")
map("n","<Leader>p",":Telescope projects <cr>")
map("n","<Leader>g",":Telescope live_grep <cr>")

