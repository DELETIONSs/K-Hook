local HttpService = game:GetService("HttpService")

local KHook = {}

-- Function to send a simple message to the webhook
function KHook:SendMessage(msg, username, webhookUrl)
    local data = {
        content = msg,
        username = username
    }

    local jsonData = HttpService:JSONEncode(data)

    -- Send the request
    local success, errorMessage = pcall(function()
        HttpService:PostAsync(webhookUrl, jsonData, Enum.HttpContentType.ApplicationJson)
    end)

    if success then
        print("Message sent to webhook successfully!")
    else
        warn("Failed to send message to webhook: " .. errorMessage)
    end
end

-- Function to send an embed message to the webhook
function KHook:SendEmbed(params)
    local webhookUrl = params.webhookUrl
    local title = params.title or "No Title"
    local description = params.description or "No Description"
    local color = params.color or 16777215 -- Default white

    local embedData = {
        ["embeds"] = {
            {
                ["title"] = title,
                ["description"] = description,
                ["color"] = color
            }
        }
    }

    local jsonData = HttpService:JSONEncode(embedData)

    -- Send the request
    local success, errorMessage = pcall(function()
        HttpService:PostAsync(webhookUrl, jsonData, Enum.HttpContentType.ApplicationJson)
    end)

    if success then
        print("Embed message sent successfully!")
    else
        warn("Failed to send embed message: " .. errorMessage)
    end
end

return KHook
