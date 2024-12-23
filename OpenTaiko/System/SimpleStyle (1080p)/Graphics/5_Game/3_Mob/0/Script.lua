--func:DrawText(x, y, text)
--func:DrawNum(x, y, num)
--func:AddGraph("filename")
--func:DrawGraph(x, y, filename)
--func:SetOpacity(opacity, "filename")
--func:SetScale(xscale, yscale, "filename")
--func:SetColor(r, g, b, "filename")
--func:SetBlendMode("mode", "filename")

--local debug_counter = 0

local mob_x = 0
local mob_y = 0
local mob_height = 0
local mob_counter = 0
local mob_in_counter = 0
local mob_out_counter = 0

local mob_state = 0
local mob_image = "Mob.png"
local right_x = nil
local right_y = nil
local right_image = "Right.png"

-- 点滅用変数
local blink_counter = 0
local blink_opacity = 100
local blink_direction = -1

function mobIn()
    mob_state = 1
    mob_in_counter = 0
    mob_image = "Mob.png"
end

function mobOut()
    mob_state = 2
    mob_out_counter = 0
    mob_image = "Mob1.png"
end

function init()
    func:AddGraph("Mob.png")
    func:AddGraph("Mob1.png")
    func:AddGraph("Right.png") -- 魂用画像を追加
    mob_height = func:GetTextureHeight("Mob.png")

    -- 初期設定は通常の合成モードにしておく
    func:SetBlendMode("normal", right_image)
end

function update()

    mob_counter = mob_counter + (bpm[0] * deltaTime / 60.0)
    if mob_counter > 1 then 
        mob_counter = 0
    end

    if mob_state == 3 and gauge[0] < 100 then
        mobOut()
    end

    if mob_state == 0 then

        if gauge[0] == 100 then
            mobIn()
        end

    elseif mob_state == 1 then

        mob_in_counter = mob_in_counter + (bpm[0] * deltaTime / 30.0)
        if mob_in_counter > 1 then
            mob_state = 3
            mob_counter = 0.5
        end
        
        mob_y = 1080 + (540 * (1.0 - math.sin(mob_in_counter * math.pi / 2)))
        mob_image = "Mob.png"
        
        -- 魂が入った際の画像位置をセット
        right_x = 0
        right_y = 0

    elseif mob_state == 2 then

        mob_out_counter = mob_out_counter + (bpm[0] * deltaTime / 30.0)
        if mob_out_counter > 1 then
            mob_state = 0
        end
        
        mob_y = 1080 + (540 * (1 - math.cos(mob_out_counter * math.pi)))
        mob_image = "Mob1.png"
        
        -- 魂の画像を非表示
        right_x = nil
        right_y = nil

    elseif mob_state == 3 then
        local previous_mob_y = mob_y
        mob_y = 1080 + ((1.0 - math.sin(mob_counter * math.pi)) * 105)
        
        if mob_y > previous_mob_y then
            mob_image = "Mob.png"
        else
            mob_image = "Mob1.png"
        end
        
        -- 魂が入った状態を維持
        right_x = 0
        right_y = 0
    end

    -- 点滅用不透明度を更新 (100% ~ 80%の範囲で変動)
    if gauge[0] <= 100 and gauge[0] >= 20 and right_x ~= nil then
        blink_counter = blink_counter + deltaTime
        if blink_counter >= 0.02 then -- フレームごとに更新
            blink_opacity = blink_opacity + blink_direction * 1
            if blink_opacity <= 80 then
                blink_opacity = 80
                blink_direction = 1
            elseif blink_opacity >= 100 then
                blink_opacity = 100
                blink_direction = -1
            end
            blink_counter = 0
        end
    else
        blink_opacity = 100 -- デフォルト状態に戻す
    end
end

function draw()
    if mob_state ~= 0 then
        func:DrawGraph(mob_x, mob_y - mob_height, mob_image)
    end

    -- 魂が入った際に画像を描画 (加算合成と不透明度の設定を追加)
    if right_x ~= nil and right_y ~= nil then
        func:SetBlendMode("add", right_image) -- 加算合成を設定
        func:SetOpacity(blink_opacity, right_image) -- 点滅の不透明度を適用
        func:DrawGraph(right_x, right_y, right_image)
        func:SetBlendMode("normal", right_image) -- 通常の合成モードに戻す
    end
end
