return {
  {
    "nvim-neotest/neotest",
    lazy = true,
    dependencies = {
      "olimorris/neotest-phpunit",
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-phpunit")
        },
      })
    end
  },
  {
    "andythigpen/nvim-coverage",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("coverage").setup()
    end,
  }
}
