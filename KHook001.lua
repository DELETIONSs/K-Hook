local KHook = {}

-- Function to send a simple message to the webhook
function KHook:SendMessage(msg, username, webhookUrl)
    local data = {
        content = msg,
        username = username
    }

    local jsonData = game:GetService("HttpService"):JSONEncode(data)

    -- Request data structure
    local requestData = {
        Url = webhookUrl,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json",
        },
        Body = jsonData
    }

    -- Send the request using JJSploit's request function
    local success, result = pcall(function()
        return request(requestData)
    end)

    if success then
        print("Message sent to webhook successfully!")
    else
        warn("Failed to send message to webhook: " .. tostring(result))
    end
end

-- Function to send an embed message to the webhook
function KHook:SendEmbed(params)
    local webhookUrl = params.webhookUrl
    local title = params.title or "No Title"
    local description = params.description or "No Description"
    local color = params.color or 16777215 -- Default white color

    local embedData = {
        ["embeds"] = {
            {
                ["title"] = title,
                ["description"] = description,
                ["color"] = color
            }
        }
    }

    local jsonData = game:GetService("HttpService"):JSONEncode(embedData)

    -- Request data structure
    local requestData = {
        Url = webhookUrl,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json",
        },
        Body = jsonData
    }

    -- Send the request using JJSploit's request function
    local success, result = pcall(function()
        return request(requestData)
    end)

    if success then
        print("Embed message sent successfully!")
    else
        warn("Failed to send embed message: " .. tostring(result))
    end
end

return KHook
