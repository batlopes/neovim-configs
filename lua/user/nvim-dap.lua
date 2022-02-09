require('dap-python').setup('/home/bruno/.cache/pypoetry/virtualenvs/python-5kop6QLa-py3.10/bin/python')
require('dap')

vim.fn.sign_define('DapBreakpoint', {text='🏮', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='▶', texthl='', linehl='', numhl=''})


local widgets = require('dap.ui.widgets')
-- DAP_FLOATING_SCOPE = widgets.centered_float(widgets.scopes)
DAP_SIDE_SCOPE = widgets.sidebar(widgets.scopes)

function _DAP_SIDE_SCOPE()
  DAP_SIDE_SCOPE.toggle()
end

function _DAP_SIDE_FRAME()
  local sidebar_frame = widgets.sidebar(widgets.frames)
  sidebar_frame.open()
end

function _DAP_FLOATING_SCOPE()
  DAP_SIDE_SCOPE.toggle()
end
