return {
  {
    "mfussenegger/nvim-dap",
    opts = function(_, opts)
      local dap = require("dap")

      dap.configurations.javascript = {
        {
          name = "Attach to compounds-api",
          type = "node",
          request = "attach",
          address = "localhost",
          port = 9229,
          localRoot = vim.fn.getcwd() .. "/services/compounds-api/src", -- Local source folder
          remoteRoot = "/compounds-api/src", -- Source path inside the container
          sourceMaps = true,
          skipFiles = { "<node_internals>/**" },
          pathMappings = {
            ["/compounds-api/src"] = vim.fn.getcwd() .. "/services/compounds-api/src", -- Local to container source mapping
            ["/compounds-api/dist"] = vim.fn.getcwd() .. "/services/compounds-api/dist", -- Map dist folder to local
          },
          timeout = 20000,
        },
      }
      dap.configurations.typescript = dap.configurations.javascript
    end,
  },
}
