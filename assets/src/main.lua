local function main()
    print("555Myanmar START")

    local bootstrap = require("bootstrap.main")
    bootstrap:main()
end

xpcall(main, function(msg)
    print("555Myanmar ERROR: " .. tostring(msg))
end)
