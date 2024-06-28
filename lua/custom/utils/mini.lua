local function getSessionPath()
  local pathName = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:~:h')
  pathName = string.gsub(pathName, '/', '_')
  return pathName
end

local function openCurrentDirectorySession()
  local miniSessions = require 'mini.sessions'
  local pathName = getSessionPath()
  local _, error = pcall(miniSessions.read, pathName)
  if error ~= nil then
    print 'no session found'
  end
end

return {
  getSessionPath = getSessionPath,
  openCurrentDirectorySession = openCurrentDirectorySession,
}
