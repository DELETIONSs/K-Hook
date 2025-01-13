-- Variables
local HttpService = game:GetService("HttpService")

-- Function to send an embed message
local function sendEmbedMessage(title, description, color)
    -- Embed structure
    local embedData = {
        ["embeds"] = {
            {
                ["title"] = title,
                ["description"] = description,
                ["color"] = color -- Decimal color value (e.g., 16711680 for red)
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
