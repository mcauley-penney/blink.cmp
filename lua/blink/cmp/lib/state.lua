local M = {
  accepted = {},
  enter = {},
}

function M.mark_accepted(bufnr)
  bufnr = bufnr or vim.api.nvim_get_current_buf()
  M.accepted[bufnr] = true
end

function M.consume_accepted(bufnr)
  bufnr = bufnr or vim.api.nvim_get_current_buf()
  local ok = M.accepted[bufnr]
  M.accepted[bufnr] = nil

  return ok
end

function M.mark_enter(bufnr)
  bufnr = bufnr or vim.api.nvim_get_current_buf()
  M.enter[bufnr] = true
end

function M.consume_enter(bufnr)
  bufnr = bufnr or vim.api.nvim_get_current_buf()
  local ok = M.enter[bufnr]
  M.enter[bufnr] = nil

  return ok
end

return M
