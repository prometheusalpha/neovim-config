require('util')
require('nvim_comment').setup()

map("n", "<leader>/", ":CommentToggle<cr>")
map("v", "<leader>/", ":CommentToggle<cr>")

