local LoadingLayer = class("LoadingLayer", function()
    return cc.LayerColor:create(cc.c4b(8, 15, 35, 255))
end)

function LoadingLayer:ctor()
    local size = cc.Director:getInstance():getVisibleSize()

    local title = cc.Label:createWithSystemFont(
        "555Myanmar",
        "sans-serif",
        34
    )
    title:setPosition(size.width / 2, size.height / 2 + 45)
    self:addChild(title)

    local loading = cc.Label:createWithSystemFont(
        "Loading...",
        "sans-serif",
        18
    )
    loading:setPosition(size.width / 2, size.height / 2 - 5)
    self:addChild(loading)

    local progressBg = cc.DrawNode:create()

    local x = size.width * 0.15
    local y = size.height / 2 - 55
    local w = size.width * 0.70

    progressBg:drawSolidRect(
        cc.p(x, y),
        cc.p(x + w, y + 8),
        cc.c4f(0.15, 0.18, 0.25, 1)
    )

    self:addChild(progressBg)
end

return LoadingLayer
