require("util")

map("n","gn",":bnext<cr>")
map("n","gp",":bprev<cr>")
map("n","co",":%bdelete|edit #|normal`\"<cr>")
require("bufferline").setup{}
