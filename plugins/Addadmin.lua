do

local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
  local user = "119622060"
  if msg.to.type == 'chat' then
    local chat = ''
    chat_add_user(chat, user, callback, false)
  else 
    return 'Only work in group'
  end

end

return {
  description = "Invite admin Robot", 
  usage = {
    "/add : invite admin bot", 
  patterns = {
    "^[!/]add (.*)$"
  }, 
  run = run,
  privileged = true
}

end
