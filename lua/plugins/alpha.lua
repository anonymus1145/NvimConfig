return {
 -- Startup screen
  {
    "startup-nvim/startup.nvim",
    requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
    config = function()
      require"startup".setup({
        header = {
          type = "text",
          oldfiles_directory = true,
          align = "center",
          fold_section = false,
          title = "Header",
          margin = 0,
          content = {
            " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
            " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
            " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
            " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
            " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
            " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",

          },
          highlight = "Statement",
          default_color = "",
          oldfiles_amount = 0,
        },
        -- name which will be displayed and command
        body = {
          type = "mapping",
          oldfiles_directory = false,
          align = "center",
          fold_section = false,
          title = "Basic Commands",
          margin = 0,
          content = {
            { " Find File", "Telescope find_files", "Ctrl + p" },
            { " Find Word", "Telescope live_grep", "<leader>fg" },
            { " Recent Files", "Telescope oldfiles", "<leader>of" },
            { " File Browser", "Telescope file_browser", "<leader>fb" },
            { " Colorschemes", "Telescope colorscheme", "<leader>cs" },
            { " New File", "lua require'startup'.new_file()", "<leader>nf" },
          },
          highlight = "String",
          default_color = "",
          oldfiles_amount = 0,
        },
        footer = {
          type = "text",
          oldfiles_directory = false,
          align = "center",
          fold_section = false,
          title = "Footer",
          margin = 0,
          content = { "Anonymous1145" },
          highlight = "Number",
          default_color = "",
          oldfiles_amount = 0,
        },

        options = {
          mapping_keys = true,
          cursor_column = 0.5,
          empty_lines_between_mappings = true,
          disable_statuslines = true,
          paddings = { 8, 4, 2, 10 },
        },
        mappings = {
          execute_command = "<CR>",
          open_file = "o",
          open_file_split = "<c-o>",
          open_section = "<TAB>",
          open_help = "?",
        },
        colors = {
          background = "#282c34",
          folded_section ="#56b6c2",
        },
        parts = { "header", "body", "footer" },
      })   end
  },
}
