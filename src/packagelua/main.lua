local PackageMain = {}

function PackageMain:init()
    print("555Myanmar PACKAGE INIT")
end

function PackageMain:main()
    print("555Myanmar PACKAGE MAIN")

    local scene = cc.Director:getInstance():getRunningScene()
    if not scene then
        return
    end

    local size = cc.Director:getInstance():getVisibleSize()

    local title = cc.Label:createWithSystemFont(
        "555Myanmar",
        "sans-serif",
        32
    )
    title:setPosition(size.width / 2, size.height / 2 + 60)
    scene:addChild(title)

    local subtitle = cc.Label:createWithSystemFont(
        "Welcome",
        "sans-serif",
        20
    )
    subtitle:setPosition(size.width / 2, size.height / 2 + 20)
    scene:addChild(subtitle)

    local startButton = cc.MenuItemLabel:create(
        cc.Label:createWithSystemFont(
            "START",
            "sans-serif",
            22
        )
    )

    startButton:setCallback(function()
        print("555Myanmar START BUTTON")
    end)

    local menu = cc.Menu:create(startButton)
    menu:setPosition(size.width / 2, size.height / 2 - 40)
    scene:addChild(menu)
end

return PackageMain
