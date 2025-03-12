return {
  "devkvlt/go-tags.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    commands = {
      ['GoTagsAddJSONCamelCase'] = { '-add-tags', 'json', '-transform', 'camelcase' },
      ['GoTagsRemoveJSONCamelCase'] = { '-remove-tags', 'json', '-transform', 'camelcase' },
    },
  },
}
