local HttpService = game:GetService("HttpService")

local KHook = {}

function KHook:Send(params)
    local webhookUrl = params.webhookUrl
    local title = params.title or "No Title"
    local description = params.description or "No Description"
    local color = params.color or 16777215 -- Default white

    -- Embed structure
    local embedData = {
        ["embeds"] = {
            {
                ["title"] = title,
                ["description"] = description,
                ["color"] = color
            }
        }
    }

    -- Convert the table to JSON format
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
