# K-Hook
### Version: 0.1
#### Getting Started
```lua
local KHook = loadstring(game:HttpGet('https://raw.githubusercontent.com/DELETIONSs/K-Hook/refs/heads/main/KHook001.lua'))()
local webhookUrl = "https://discord.com/api/webhooks/1328505305285394483/_r4_7iV2V03k-1CRxjtI3Z3cJnAOFVASNkYmAUAaYi5V3JeK4R4ID0iSNfG6e2I4t7S3"
```
#### Simple Message Example
```lua
local KHook = loadstring(game:HttpGet('https://raw.githubusercontent.com/DELETIONSs/K-Hook/refs/heads/main/KHook001.lua'))()
local webhookUrl = "https://discord.com/api/webhooks/your_webhook_id/your_webhook_token"

KHook:SendMessage("Hello from JJSploit!", "SimpleBot", webhookUrl)
```
#### Embed Example
```lua
local KHook = loadstring(game:HttpGet('https://raw.githubusercontent.com/DELETIONSs/K-Hook/refs/heads/main/KHook001.lua'))()
local webhookUrl = "https://discord.com/api/webhooks/your_webhook_id/your_webhook_token"

KHook:SendEmbed({
    webhookUrl = webhookUrl,
    title = "Hello Roblox!",
    description = "This is a test embed message from JJSploit.",
    color = 65280 -- Green color
})
```
#### Finish (Needed)
```lua
local success, result = pcall(function()
    return http_request(requestData)
end)
```
