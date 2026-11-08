local bootstrap = {}

local LoadingLayer = require("bootstrap.LoadingLayer")
local PackageMain = require("packagelua.main")

function bootstrap:main()
    local scene = cc.Scene:create()
    cc.Director:getInstance():runWithScene(scene)

    local loading = LoadingLayer:create()
    scene:addChild(loading)

    print("555Myanmar BOOTSTRAP START")

    PackageMain:init()
    PackageMain:main()
end

return bootstrap
