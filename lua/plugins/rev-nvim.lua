return {
  "anonymus1145/rev.nvim",
  -- Ensure environment variables are set
  cond = function()
    return os.getenv("GEMINI_API_KEY") ~= nil
  end,
}
