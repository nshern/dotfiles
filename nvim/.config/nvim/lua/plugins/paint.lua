-- paint.lua
return {
  "folke/paint.nvim",
  config = function()
    local hlmap = {
      ["^#%s+(.-)%s*$"] = "Number",
      ["^##%s+(.-)%s*$"] = "Type",
      ["^###%s+(.-)%s*$"] = "Operator",
      ["^####%s+(.-)%s*$"] = "Label",
      ["^#####%s+(.-)%s*$"] = "String",
      ["^######%s+(.-)%s*$"] = "Error",
    }

    local highlights = {}
    for pattern, hl in pairs(hlmap) do
      table.insert(highlights, {
        filter = { filetype = "markdown" },
        pattern = pattern,
        hl = hl,
      })
    end

    require("paint").setup({
      ---@type PaintHighlight[]
      highlights = highlights,
    })
  end,
}
