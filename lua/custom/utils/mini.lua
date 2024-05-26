local function getSessionPath()
  local pathName = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:~:h')
  pathName = string.gsub(pathName, '/', '_')
  return pathName
end

return {
  getSessionPath = getSessionPath,
}
