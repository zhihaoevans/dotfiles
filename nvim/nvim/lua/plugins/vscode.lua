return {
  -- 1. 安装主题
  {
    "askfiy/visual_studio_code",
    priority = 100, -- 保证最先加载
    config = function()
      -- 可选：指定暗色/亮色
      require("visual_studio_code").setup({ mode = "dark" })
      -- 2. 立即生效
      -- vim.cmd.colorscheme("visual_studio_code")
    end,
  },

  -- 3. 告诉 LazyVim 别再加载默认主题
  {
    "LazyVim/LazyVim",
  },
}
