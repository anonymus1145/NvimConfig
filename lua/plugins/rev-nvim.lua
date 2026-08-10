return {
  "anonymus1145/rev.nvim",
  -- Ensure environment variables are set
  cond = function()
    return (os.getenv("REVNVIM_API_KEY") ~= nil and os.getenv("REVNVIM_MODEL") and os.getenv("REVNVIM_URL"))
  end,
}
