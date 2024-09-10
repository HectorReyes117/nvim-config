return {
  {
    "MoaidHathot/dotnet.nvim",
    cmd = "DotnetUI",
    opts = {},
    config = function()
      require("dotnet").setup({
        bootstrap = {
          auto_bootstrap = true,
        },
        project_selection = {
          path_display = "filename_first", -- Muestra primero los nombres de los archivos
        },
        project_root = vim.fn.getcwd(),
      })
    end,
  },
}
