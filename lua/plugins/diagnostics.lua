return {
  {
    'folke/trouble.nvim',
    event = 'VeryLazy',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    keys = {
      {
        '<leader>tt',
        ':TroubleToggle<CR>',
        mode = 'n',
        desc = 'Toggle [T]rouble',
      },
    },
    opts = {},
  },
  {
    'zbirenbaum/neodim',
    event = 'LspAttach',
    opts = {
      refresh_delay = 75,
      alpha = 0.75,
      blend_color = '#000000',
      hide = {
        underline = true,
        virtual_text = true,
        signs = true,
      },
      regex = {
        '[uU]nused',
        '[nN]ever [rR]ead',
        '[nN]ot [rR]ead',
      },
      priority = 128,
      disable = {},
    },
  },
  {
    'dgagn/diagflow.nvim',
    event = 'LspAttach',
    opts = {},
  },

  {
    'dmmulroy/tsc.nvim',
    dependencies = { 'folke/trouble.nvim' },
    opts =
    {
      run_as_monorepo = true,
      use_trouble_qflist = true,
    }
  }

}
