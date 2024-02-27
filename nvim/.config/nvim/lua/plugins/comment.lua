return {
  "echasnovski/mini.comment",
  event = "VeryLazy",
  opts = {
    options = {
      ignore_blank_line = true,
      start_of_line = true,
      custom_commentstring = function()
        return require("ts_context_commentstring.internal").calculate_commentstring() or vim.bo.commentstring
      end,
    },
  },
}
