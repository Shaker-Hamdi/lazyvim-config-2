return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    opts = {
      suggestion = { enabled = true, auto_trigger = true, keymap = { accept = "<C-l>", next = "<C-]>", prev = "<C-[>" } },
      panel = { enabled = true, auto_refresh = true },
    },
  }
}
