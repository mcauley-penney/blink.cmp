local M = {}

local store = {
  accept = {},
  enter = {},
}

function M.set_state(name, bufnr)
  bufnr = bufnr or vim.api.nvim_get_current_buf()
  store[name][bufnr] = true
end

function M.check_state(name, bufnr)
  bufnr = bufnr or vim.api.nvim_get_current_buf()
  return store[name][bufnr]
end

function M.consume_state(name, bufnr)
  bufnr = bufnr or vim.api.nvim_get_current_buf()
  store[name][bufnr] = nil
end

return M
