return {
  -- Completion engine
  {
    'Saghen/blink.cmp',
    event = 'InsertEnter',
  },
  -- Ollama completions with FIM
  {
    'milanglacier/minuet-ai.nvim',
    event = 'InsertEnter',
    opts = {
      provider = 'ollama',
      ollama = {
        endpoint = 'http://127.0.0.1:11434',
        model = 'qwen2.5-coder:32b',
        options = { temperature = 0.2, num_ctx = 8192, top_p = 0.9 },
      },
      completion = {
        mode = 'fim', -- Fill-in-middle for code
        trigger = { auto = true },
      },
    },
  },

  -- Optional ghost text
  -- {
  --   'Jacob411/Ollama-Copilot',
  --   event = 'InsertEnter',
  --   opts = {
  --     model = 'qwen2.5-coder:32b',
  --     endpoint = 'http://127.0.0.1:11434',
  --     accept_key = '<Tab>',
  --   },
  -- },

  -- Optional chat/refactors
  {
    'olimorris/codecompanion.nvim',
    cmd = { 'CodeCompanion', 'CC' },
    opts = {
      adapters = {
        ollama = {
          schema = { model = { default = 'qwen2.5-coder:32b' } },
        },
      },
    },
  },
}
