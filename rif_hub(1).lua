local v0 = setmetatable({}, {
    __index = function(v178, v179)
        return game:GetService(v179)
    end,
})
local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
local v4 = function(data)
    WindUI:Notify({
        Title = data.Title or 'Rif Hub',
        Content = data.Description or data.Content or '',
        Duration = data.Duration or 3,
        Image = data.Image,
    })
end
local v5 = '1.0.0'
local v6 = 'keyless'

if not game:IsLoaded() then
    game.Loaded:Wait()
end

local v7 = v0.VirtualInputManager
local v8 = v0.UserInputService
local v9 = v0.TeleportService
local v10 = v0.TweenService
local v11 = v0.HttpService
local v12 = v0.RunService
local v13 = v0.Lighting
local v14 = v0.CoreGui
local v15 = v0.Players
local v16 = v0.Stats
local v17 = v16.Network.ServerStatsItem['Data Ping']

makefolder('RifHub')

local v20 = table.insert
local v21 = table.find
local v22 = table.remove
local v23 = table.clear
local v24 = workspace:WaitForChild('Map')
local v25 = workspace:WaitForChild('Live')
local v26 = workspace:WaitForChild('Thrown')
local v27 = workspace:WaitForChild('Terrain')
local v28 = workspace:WaitForChild('Cutscenes')
local v29 = workspace.CurrentCamera
local v30 = v15.LocalPlayer
local v31 = v30.PlayerGui
local v32 = v30:GetMouse()
local v33 = workspace.FallenPartsDestroyHeight
local v34 = v13:FindFirstChild('ColorCorrection') or Instance.new('ColorCorrectionEffect', v13)

v34.Name = 'ColorCorrection'

local v36 = {
    'Shove',
    'Normal Punch',
    'Uppercut',
    'Flowing Water',
    'Lethal Whirlwind Stream',
    "Hunter's Grasp",
    'Doom Dive',
    'Crowd Buster',
    'Hammer Heel',
    'Binding Cloth',
    'Jet Dive',
    'Blitz Shot',
    'Ignition Burst',
    'Flash Strike',
    'Scatter',
    'Explosive Shuriken',
    'Homerun',
    'Beatdown',
    'Four Ball',
    'Quick Slice',
    'Atmos Cleave',
    'Pinpoint Cut',
    'Crushing Pull',
    'Windstorm Fury',
    'Stone Coffin',
    'Expulsive Push',
    'GoPush',
    'Vanishing Kick',
    'Whirlwind Drop',
    'Head First',
    'Weboom',
    'Plasma Cannon',
    'Trinity Tear',
    'Twin Burst',
    'TornadoBind',
}
local v37 = {
    'Consecutive Punches',
    'Machine Gun Blows',
    'Bullet Barrage',
}
local v38 = {
    'Custom Cape',
    'Guild Cape',
    'Slinky',
    'Ruler Cape',
    'Webbed Cape',
    'Warden Cape',
    'Desert Cape',
    'Divine Wheel',
    'Spiky Cape',
    'Fur Cape',
    'Blood Scarf',
    'Torn Headband',
    'Headband',
    'Bandage Wrap',
    'Waist Sash',
    'Leg Iron',
    'Leg Iron',
    'Worn Cape',
    'Tattered Cape',
    'Torn Cape',
    'White Cape',
    'Conqueror Cape',
    'Jagged Cape',
    'Royal Cape',
    'White Scarf',
    'Short Sash',
    'Red Gloves',
    'SpiralHolder',
    'Long Sash',
    'Bandages',
    'Purple Scarf',
}
local v39 = {
    'Gold Aura',
    'Midnight Aura',
    'Shadow Aura',
    'Burning Aura',
    'Crimson Aura',
    'Graceful Aura',
    'Glitch Aura',
    'Colorful Aura',
    'Error Aura',
    'Stench Aura',
    'Dark Aura',
    'Lighting Aura',
    'Ki Aura',
}
local v40 = {
    'Counter',
    'AbsoluteImmortal',
    'AtomicCounter',
    'HunterCounter',
    'UpFrames',
    'Ragdoll',
    'ForceField',
    'CanBringUp',
}
local v41 = {
    'DoingEmote',
    'CancelEmote',
    'CancelEmote2',
    'BeingLaunched',
    'Freeze',
}
local v42 = {
    'Counter',
    'HunterCounter',
    'DoingEmote',
    'CancelEmote',
    'CancelEmote2',
    'BeingLaunched',
    'Ragdoll',
    'Freeze',
    'BarrageBind',
}
local v43 = {}
local v44 = {}
local v45 = {}
local v46 = {}
local v47 = {}
local v48 = {
    Garou = {
        WaterTrail = 'true',
        ['5'] = 'false',
        ['3-2'] = 'false',
        ['2-2'] = 'false',
        ['1'] = 'true',
        Spinparticle2 = 'true',
        ['4-2'] = 'true',
        ['4-3'] = 'true',
        ['6'] = 'true',
        ['7'] = 'true',
        ['8'] = 'true',
        ['9'] = 'true',
        Line = 'false',
        Real = 'false',
        Real2 = 'false',
        AirTrail = 'false',
        ParticleEmitter = 'false',
        big = 'false',
        ['4-4'] = 'false',
        Was = 'false',
        Blue = 'true',
        WaterTrailEnd = 'false',
        ['1-1'] = 'true',
        ['3-3'] = 'true',
        ['9-2'] = 'true',
        ['1-2'] = 'true',
        ['10'] = 'true',
        Trail1 = 'false',
    },
}
local v49 = {
    BodySmoke = true,
    BodySmokez = true,
    SmokeUpTwo = true,
    SmokeUp = true,
    UpSmoke = true,
    SmokeBack = true,
    GroundSmoke = true,
    UpSmoke2 = true,
    SmokeOne = true,
    Push = true,
    SmokeDown = true,
    Dust = true,
    Smoke = true,
    Smoke3 = true,
    SmokeyUp = true,
    Smokey = true,
}
local v50 = {
    Bald = 'Saitama',
    Hunter = 'Garou',
    Monster = 'Red Garou',
    Cyborg = 'Genos',
    Ninja = 'Sonic',
    Batter = 'Metal Bat',
    Blade = 'Samurai',
    Esper = 'Tatsumaki',
    Purple = 'Siryu',
    Tech = 'Emperor',
}
local v51
local v52
local v53
local v54
local v55
local v56
local v57 = ''
local v58
local v59
local v60
local v61
local v62
local v63
local v64
local v65
local v66
local v67 = {}
local v68 = Enum.KeyCode.Space
local v69 = Enum.KeyCode.Q
local v70 = Enum.KeyCode.W
local v71 = Enum.KeyCode.S
local v72 = Enum.KeyCode.D
local v73 = Enum.KeyCode.A
local v74 = '10479335397'
local v75 = '10480793962'
local v76 = '10480796021'
local v77 = '10503381238'
local v78 = '13379003796'
local v79 = {
    Goal = 'LeftClick',
}
local v80 = {
    Goal = 'LeftClickRelease',
}
local v81 = {
    Dash = Enum.KeyCode.S,
    Key = Enum.KeyCode.Q,
    Goal = 'KeyPress',
}
local v82 = {
    Dash = Enum.KeyCode.W,
    Key = Enum.KeyCode.Q,
    Goal = 'KeyPress',
}
local v83 = {
    Goal = 'KeyPress',
    Key = Enum.KeyCode.F,
}
local v84 = {
    Goal = 'KeyRelease',
    Key = Enum.KeyCode.F,
}
local v85 = 28
local v86 = 22
local v87 = 18
local v88 = 15
local v89 = 9
local v90 = {
    Autoblock = {
        Enabled = false,
        DashPredict = false,
        AutoM1 = false,
        AutoCounter = false,
    },
    AutoTech = {
        Enabled = false,
        Tech = '',
        Loopv2 = {
            Precision = 0.25,
            SecondFlick = 0.04,
            Jump = true,
            FirstFlickAngle = 0,
            LegitJump = false,
        },
        LockonPrecision = 1,
        SupaMethod = 'RenderStepped',
        LoopDashLooksUp = false,
    },
    Misc = {
        FriendCheck = false,
        NoDashEndLag = false,
        StretchEnabled = false,
        StretchValue = 1,
        LockOnEnabled = false,
        LockOnPrecision = 1,
        TDSEnabled = false,
    },
    Visuals = {
        NoSmoke = false,
        NoRings = false,
        NoNewLight = false,
        NoCapes = false,
        NoAuras = false,
        NoGarouC = false,
        FOV = 70,
        EffectsColor = {
            Enabled = false,
            Color = Color3.fromRGB(142, 187, 255),
        },
        CustomUltbar = {
            UltbarText = {
                Enabled = false,
                Text = 'RIF HUB',
            },
            UltbarColor = {
                Enabled = false,
                Color = Color3.fromRGB(142, 187, 255),
            },
        },
        ESP = {
            Enabled = false,
            DeathCounterColor = Color3.new(0.454902, 0.13725499999998192, 0.141176),
            NeutralColor = Color3.new(0.364706, 0.564706, 1),
            FriendColor = Color3.new(0.588235, 1, 0.27451),
            EnemyColor = Color3.new(0.635294, 0.4, 0.113725),
            UltColor = Color3.new(0.635294, 0.576471, 0.113725),
            SaitamaUltColor = Color3.new(0.9803921568627451, 1, 0.6784313725490196),
            NoBillboards = false,
            OutlineTransparency = 0.7,
            DeathCounterESP = false,
            SaitamaUltESP = false,
        },
    },
    Macro = {
        m1ResetEnabled = false,
        EmoteDash = {
            Enabled = false,
            Delay = 0.05,
            Type = 'Straight',
        },
        BackDashCancel1 = {Enabled = false},
        BackDashCancel2 = {Enabled = false},
        BackDashCancel3 = {Enabled = false},
        BackDashCancel4 = {Enabled = false},
        TechHelper = {
            Enabled = false,
            Tech = '',
        },
        ExtraTechHelper = {
            Enabled = false,
            Tech = '',
        },
    },
    Rage = {
        NoStun = false,
        NoSlow = false,
        NoFatigue = false,
        AlwaysJump = false,
        AutoDodge = false,
        Fling = {
            Target = '',
            LoopFling = false,
        },
        CustomFrontDash = {
            Enabled = false,
            OnlyOnKeybind = false,
            Distance = 1,
        },
        CustomSideDash = {
            Enabled = false,
            OnlyOnKeybind = false,
            Distance = 1,
            Side = '',
            RemoveInertia = false,
            RMIDelay = 6.999999999999318E-2,
            Jump = false,
        },
    },
}

local function v91(v180)
    if v180 then
        v180:Disconnect()

        v180 = nil
    end
end
local function v92(v181)
    if v181 then
        for v656, v657 in ipairs(v181)do
            v91(v657)
        end
    end
end
local function v93(v182, v183, v184, v185)
    local v186 = 0
    local v187

    while true do
        if (v186 == (1)) then
            return v187
        end
        if (v186 == (0)) then
            local v658 = 0

            while true do
                if (v658 == (0)) then
                    v187 = v183[v184]:Connect(v185)

                    v20(v182, v187)

                    v658 = 1
                end
                if (v658 == 1) then
                    v186 = 1

                    break
                end
            end
        end
    end
end
local function v94(v188)
    v7:SendKeyEvent(true, v188, false, game)
end
local function v95(v189)
    v7:SendKeyEvent(false, v189, false, game)
end
local function v96(v190)
    local v191 = 0
    local v192

    while true do
        if (v191 == (0)) then
            v192 = 0

            while true do
                if (v192 == (0)) then
                    v94(v190)
                    task.wait()

                    v192 = 1
                end
                if (v192 == (1)) then
                    v95(v190)

                    break
                end
            end

            break
        end
    end
end
local function v97()
    if not v59 then
        v64:FireServer(v82)

        if not workspace:GetAttribute('NoDashCooldown') then
            local v720 = 0
            local v721

            while true do
                if (v720 == (0)) then
                    v721 = 0

                    while true do
                        if (v721 == (0)) then
                            v59 = true

                            task.delay(5, function()
                                v59 = false
                            end)

                            break
                        end
                    end

                    break
                end
            end
        end
    end
end
local function v98(v193, v194)
    for v586, v587 in v193 do
        for v609, v610 in pairs(v587:GetDescendants())do
            v194(v609, v610)
        end
    end
end
local function v99(v195)
    for v588, v589 in ipairs(v65:GetPlayingAnimationTracks())do
        if (v589.Animation and (v589.Animation.AnimationId == ('rbxassetid://' .. tostring(v195)))) then
            v589:Stop()
        end
    end
end
local function v100(v196)
    local v197 = 0

    while true do
        if (v197 == (0)) then
            for v722, v723 in ipairs(v65:GetPlayingAnimationTracks())do
                if (v723.Animation and (v723.Animation.AnimationId == ('rbxassetid://' .. tostring(v196)))) then
                    return true
                end
            end

            return false
        end
    end
end
local function v101(v198, v199)
    if (v47[v198.Name] == 'Friend') then
        if v199 then
            if v90.Misc.FriendCheck then
                return true
            else
                return false
            end
        else
            return true
        end
    else
        return false
    end
end
local function v102(v200)
    local v201 = 0
    local v202

    while true do
        if (v201 == 0) then
            v202 = 0

            while true do
                if (v202 == (0)) then
                    if v200:IsFriendsWithAsync(v30.userId) then
                        v47[v200.Name] = 'Friend'

                        return
                    end

                    v47[v200.Name] = 'Neutral'

                    break
                end
            end

            break
        end
    end
end
local function v103(v203, v204, v205)
    v29.CFrame = CFrame.new(v203) * CFrame.Angles(0, v204, 0) * CFrame.Angles(v205, 0, 0)
end
local function v104(v207, v208, v209, v210)
    v210 = v210 or (1)

    local v211 = v29.CFrame
    local v212 = v211.Position
    local v213
    local v214
    local v215

    if v208 then
        local v611 = 0
        local v612

        while true do
            if (v611 == 1) then
                v214 = math.atan2(-v612.X, -v612.Z)

                break
            end
            if (v611 == 0) then
                v612 = nil

                if v209 then
                    local v828 = 0

                    while true do
                        if (v828 == (0)) then
                            v612 = (v208 - v63.Position).Unit
                            v215 = math.atan2(-v63.CFrame.LookVector.X, -v63.CFrame.LookVector.Z)

                            break
                        end
                    end
                else
                    local v829 = 0
                    local v830
                    local v831

                    while true do
                        if (2 == v829) then
                            v831 = v211.LookVector
                            v215 = math.atan2(-v831.X, -v831.Z)

                            break
                        end
                        if (v829 == (1)) then
                            v612 = (v208 - v830).Unit
                            v213 = math.asin(v612.Y)
                            v829 = 2
                        end
                        if (v829 == 0) then
                            v830 = v212

                            if (v8.MouseBehavior == Enum.MouseBehavior.LockCenter) then
                                v830 = v830 - (v211.RightVector * 1.75)
                            end

                            v829 = 1
                        end
                    end
                end

                v611 = 1
            end
        end
    else
        local v613 = 0
        local v614

        while true do
            if (v613 == (1)) then
                v215 = math.atan2(-v614.X, -v614.Z)
                v214 = v215 + math.rad(v207)

                break
            end
            if (v613 == 0) then
                local v749 = 0

                while true do
                    if ((1) == v749) then
                        v613 = 1

                        break
                    end
                    if (0 == v749) then
                        v614 = nil

                        if v209 then
                            v614 = v63.CFrame.LookVector
                        else
                            local v892 = 0

                            while true do
                                if (v892 == (0)) then
                                    v614 = v211.LookVector
                                    v213 = math.asin(v614.Y)

                                    break
                                end
                            end
                        end

                        v749 = 1
                    end
                end
            end
        end
    end

    local v216 = math.atan2(math.sin(v214 - v215), math.cos(v214 - v215))
    local v217 = v215 + (v216 * v210)

    if v209 then
        local v615 = 0

        while true do
            if (v615 == 0) then
                v62.AutoRotate = false
                v63.CFrame = CFrame.new(v63.Position) * CFrame.Angles(0, v217, 0)

                break
            end
        end
    else
        v103(v212, v217, v213)
    end
end
local function v105(v218, v219, v220)
    local v221 = 0
    local v222
    local v223
    local v224
    local v225
    local v226
    local v227

    while true do
        if (v221 == (0)) then
            local v659 = 0

            while true do
                if (v659 == 0) then
                    v222 = math.rad(v218)
                    v223 = tick()
                    v659 = 1
                end
                if (v659 == (1)) then
                    v221 = 1

                    break
                end
            end
        end
        if (v221 == 3) then
            v227 = v12.RenderStepped:Connect(function()
                local v724 = 0
                local v725
                local v726
                local v727
                local v728
                local v729
                local v730
                local v731
                local v732

                while true do
                    if (v724 == (0)) then
                        v725 = tick() - v223
                        v726 = math.clamp(v725 / v219, 0, 1)
                        v724 = 1
                    end
                    if (v724 == 3) then
                        v731 = math.asin(v730.Y)
                        v732 = v225 + ((v226 - v225) * v727)
                        v724 = 4
                    end
                    if (v724 == (4)) then
                        if v220 then
                            local v866 = 0

                            while true do
                                if (v866 == (0)) then
                                    v62.AutoRotate = false
                                    v63.CFrame = CFrame.new(v63.Position) * CFrame.Angles(0, v732, 0)

                                    break
                                end
                            end
                        else
                            v103(v729, v732, v731)
                        end
                        if (v726 >= (1)) then
                            v91(v227)
                        end

                        break
                    end
                    if (v724 == (1)) then
                        v727 = v726 * v726 * ((3) - ((2) * v726))
                        v728 = v29.CFrame
                        v724 = 2
                    end
                    if (v724 == (2)) then
                        v729 = v728.Position
                        v730 = v728.LookVector
                        v724 = 3
                    end
                end
            end)

            break
        end
        if (v221 == (2)) then
            v226 = v225 + v222
            v227 = nil
            v221 = 3
        end
        if (v221 == (1)) then
            local v660 = 0

            while true do
                if (1 == v660) then
                    v221 = 2

                    break
                end
                if (v660 == (0)) then
                    v224 = v29.CFrame.LookVector
                    v225 = math.atan2(-v224.X, -v224.Z)
                    v660 = 1
                end
            end
        end
    end
end
local function v106(v228, v229)
    local v230 = 0

    while true do
        if (v230 == (0)) then
            if v229:FindFirstChild('Counter') then
                return v90.Visuals.ESP.DeathCounterColor
            elseif v229:GetAttribute('Ulted') then
                local v835 = 0

                while true do
                    if (v835 == (0)) then
                        if (v229:GetAttribute('Character') == 'Bald') then
                            return v90.Visuals.ESP.SaitamaUltColor
                        end

                        return v90.Visuals.ESP.UltColor
                    end
                end
            elseif v101(v228, false) then
                return v90.Visuals.ESP.FriendColor
            elseif (v47[v228.Name] == 'Enemy') then
                return v90.Visuals.ESP.EnemyColor
            end

            return v90.Visuals.ESP.NeutralColor
        end
    end
end
local function v107(v231)
    local v232 = 0
    local v233

    while true do
        if ((0) == v232) then
            v233 = 0

            while true do
                if (v233 == (0)) then
                    for v836 = #v67, 2, -1 do
                        local v837 = 0
                        local v838
                        local v839

                        while true do
                            if ((1) == v837) then
                                if ((v839.time <= v231) and (v838.time >= v231)) then
                                    local v903 = (v231 - v839.time) / (v838.time - v839.time)

                                    return v839.cf:Lerp(v838.cf, v903)
                                end

                                break
                            end
                            if ((0) == v837) then
                                local v893 = 0

                                while true do
                                    if (v893 == (1)) then
                                        v837 = 1

                                        break
                                    end
                                    if (v893 == 0) then
                                        v838 = v67[v836]
                                        v839 = v67[v836 - (1)]
                                        v893 = 1
                                    end
                                end
                            end
                        end
                    end

                    return v67[1] and v67[1].cf
                end
            end

            break
        end
    end
end
local function v108(v234)
    return v15:GetUserThumbnailAsync(v234.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
end
local function v109(v235)
    local v236 = 0
    local v237
    local v238
    local v239

    while true do
        if (v236 == 0) then
            v237 = math.floor(v235.R * 255)
            v238 = math.floor(v235.G * 255)
            v236 = 1
        end
        if (v236 == (1)) then
            v239 = math.floor(v235.B * (255))

            return string.format('#%02X%02X%02X', v237, v238, v239)
        end
    end
end
local function v110(v240, v241)
    local v242 = 0

    while true do
        if (v242 == (0)) then
            local v661 = 0

            while true do
                if (v661 == 0) then
                    for v840, v841 in pairs(v240:GetChildren())do
                        if v21(v241, v841.Name) then
                            return false
                        end
                    end

                    return true
                end
            end
        end
    end
end
local function v111(v243, v244, v245)
    local v246 = 0

    while true do
        if (v246 == 0) then
            if not v61.PrimaryPart then
                return
            end

            v63.CFrame = CFrame.new(v243.Position) * v244 * v245
            v246 = 1
        end
        if (v246 == 1) then
            v61:SetPrimaryPartCFrame(CFrame.new(v243.Position) * v244 * v245)

            v63.Velocity = Vector3.new(9E7, 9E8, 9E7)
            v246 = 2
        end
        if (v246 == 2) then
            v63.RotVelocity = Vector3.new(900000000, 9E8, 9E8)

            break
        end
    end
end
local function v112(v247)
    local v248 = v247:FindFirstChild('HumanoidRootPart')
    local v249 = v247:FindFirstChild('Humanoid')

    if (not v248 or not v249) then
        return
    end

    local v250 = Instance.new('BodyVelocity')

    v250.Parent = v63
    v250.Velocity = Vector3.new(0, 0, 0)
    v250.MaxForce = Vector3.new(8999999488, 8999999488, 8999999488)

    local v254 = tick()
    local v255 = 0
    local v256 = 0
    local v257 = v63.CFrame

    workspace.FallenPartsDestroyHeight = NaN - 0

    repeat
        local v590 = 0

        while true do
            if ((1) == v590) then
                if (v248.Velocity.Magnitude < 50) then
                    local v795 = 0

                    while true do
                        if ((0) == v795) then
                            v255 = v255 + 58 + 42

                            if (v256 == 1) then
                                local v896 = 0

                                while true do
                                    if (v896 == (0)) then
                                        v111(v248, CFrame.new(0, 1.5, 0) + ((v249.MoveDirection * v248.Velocity.Magnitude) / 1.25), CFrame.Angles(math.rad(v255), 0, 0))
                                        v111(v248, CFrame.new(0, 1.5, 0) + v249.MoveDirection, CFrame.Angles(math.rad(v255), 0, 0))

                                        break
                                    end
                                end
                            else
                                local v897 = 0
                                local v898

                                while true do
                                    if (v897 == (0)) then
                                        v898 = 0

                                        while true do
                                            if (v898 == 0) then
                                                v111(v248, CFrame.new(0, -1.5, 0) + ((v249.MoveDirection * v248.Velocity.Magnitude) / (1.25)), CFrame.Angles(math.rad(v255), 0, 0))
                                                v111(v248, CFrame.new(0, -1.5, 0) + v249.MoveDirection, CFrame.Angles(math.rad(v255), 0, 0))

                                                break
                                            end
                                        end

                                        break
                                    end
                                end
                            end

                            break
                        end
                    end
                elseif (v256 == (1)) then
                    local v852 = 0

                    while true do
                        if ((0) == v852) then
                            v111(v248, CFrame.new(0, 1.5, v249.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                            v111(v248, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))

                            break
                        end
                    end
                else
                    local v853 = 0

                    while true do
                        if (v853 == 0) then
                            v111(v248, CFrame.new(0, -1.5, -v249.WalkSpeed), CFrame.Angles(0, 0, 0))
                            v111(v248, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))

                            break
                        end
                    end
                end

                task.wait()

                break
            end
            if (v590 == (0)) then
                v256 = v256 + (1)

                if (v256 > (1)) then
                    v256 = 0
                end

                v590 = 1
            end
        end
    until (v254 + 2 + 0) < tick()

    v250:Destroy()

    repeat
        local v591 = 0

        while true do
            if (v591 == (0)) then
                v63.CFrame = v257 * CFrame.new(0, 0.5, 0)

                v61:SetPrimaryPartCFrame(v257 * CFrame.new(0, 0.5, 0))

                v591 = 1
            end
            if (v591 == (1)) then
                for v752, v753 in pairs(v61:GetChildren())do
                    if v753:IsA('BasePart') then
                        v753.Velocity, v753.RotVelocity = Vector3.new(), Vector3.new()
                    end
                end

                task.wait()

                break
            end
        end
    until (v63.Position - v257.Position).Magnitude < (25)

    workspace.FallenPartsDestroyHeight = v33
end
local function v113(v259, v260)
    local v261 = 0

    while true do
        if (v261 == 0) then
            task.wait(v260)

            v63.AssemblyLinearVelocity = Vector3.new(v63.AssemblyLinearVelocity.X * v259, v63.AssemblyLinearVelocity.Y, v63.AssemblyLinearVelocity.Z * v259)

            break
        end
    end
end
local function v114(v262)
    local v263 = 0
    local v264
    local v265
    local v266

    while true do
        local v592 = 0

        while true do
            if (v592 == (0)) then
                if ((0) == v263) then
                    v264 = v63.Position
                    v265 = v262.Position
                    v263 = 1
                end
                if (v263 == (1)) then
                    v266 = (Vector3.new(v264.X, 0, v264.Z) - Vector3.new(v265.X, 0, v265.Z)).Magnitude

                    if ((v266 <= 0.2) and (v264.Y < v265.Y)) then
                        return true
                    end

                    v263 = 2
                end

                v592 = 1
            end
            if (v592 == (1)) then
                if ((2) == v263) then
                    return false
                end

                break
            end
        end
    end
end
local function v115(v267)
    local v268 = 0

    while true do
        if (v268 == (0)) then
            local v666 = 0

            while true do
                if (v666 == (0)) then
                    v267 = v267 or 1

                    return v17:GetValue() / v267
                end
            end
        end
    end
end
local function v116(v269)
    local v270 = 0
    local v271

    while true do
        if (0 == v270) then
            v271 = v269 + ((v115() - (50)) * -3.846E-4)

            return {
                v271,
                v269 - v271,
            }
        end
    end
end
local function v117()
    local v272 = 0
    local v273
    local v274

    while true do
        if (0 == v272) then
            local v667 = 0

            while true do
                if (v667 == (1)) then
                    v272 = 1

                    break
                end
                if (v667 == 0) then
                    v273 = v31:WaitForChild('Hotbar')
                    v274 = v273:WaitForChild('Backpack'):WaitForChild('Hotbar')
                    v667 = 1
                end
            end
        end
        if (v272 == (1)) then
            return v274
        end
    end
end
local function v118()
    local v275 = v31:WaitForChild('Bar'):WaitForChild('MagicHealth')
    local v276 = v275:WaitForChild('Health'):WaitForChild('Bar'):WaitForChild('Bar')
    local v277 = v275:WaitForChild('TextLabel')
    local v278 = v117()

    v92(v43)

    for v593 = 1, 4 do
        local v594 = 0
        local v595
        local v596
        local v597

        while true do
            if (v594 == (0)) then
                v595 = 0
                v596 = nil
                v594 = 1
            end
            if (v594 == 1) then
                v597 = nil

                while true do
                    if ((0) == v595) then
                        v596 = v278:WaitForChild(v593):WaitForChild('Base')
                        v597 = v596.ChildAdded:Connect(function(v854)
                            if (v854.Name == 'Cooldown') then
                                if v90.Visuals.CustomUltbar.UltbarColor.Enabled then
                                    v854.BackgroundColor3 = v90.Visuals.CustomUltbar.UltbarColor.Color
                                else
                                    v854.BackgroundColor3 = Color3.fromRGB(255, 87, 87)
                                end
                            end
                        end)
                        v595 = 1
                    end
                    if (v595 == 1) then
                        v20(v43, v597)

                        break
                    end
                end

                break
            end
        end
    end

    if v90.Visuals.CustomUltbar.UltbarText.Enabled then
        v277.Text = v90.Visuals.CustomUltbar.UltbarText.Text
    else
        v277.Text = v61:GetAttribute('UltimateName') or 'Other'
    end
    if v90.Visuals.CustomUltbar.UltbarColor.Enabled then
        v276.ImageColor3 = v90.Visuals.CustomUltbar.UltbarColor.Color
    else
        v276.ImageColor3 = Color3.fromRGB(255, 87, 87)
    end
end
local function v119(v279, v280, v281)
    if (v90.Visuals.ESP.Enabled or ((v90.Visuals.ESP.DeathCounterESP or v90.Visuals.ESP.SaitamaUltESP) and v281)) then
        local v622 = 0
        local v623
        local v624
        local v625
        local v626
        local v627
        local v628
        local v629
        local v630

        while true do
            if (v622 == (6)) then
                v628.Text = v629 .. ' ' .. math.floor(v630) .. '% Ult \n' .. v279.Name

                break
            end
            if (v622 == (0)) then
                v623 = v280:FindFirstChild('Head')
                v624 = v280:FindFirstChild('ESP')
                v625 = v106(v279, v280)
                v626 = v280:FindFirstChild('Highlight')
                v622 = 1
            end
            if (v622 == 2) then
                v624.FillColor = v625
                v624.OutlineTransparency = 1
                v624.Parent = v280

                if (not v623 or v90.Visuals.ESP.NoBillboards) then
                    return
                end

                v622 = 3
            end
            if (v622 == (1)) then
                if v626 then
                    task.defer(v626.Destroy, v626)
                end
                if not v624 then
                    v624 = Instance.new('Highlight')
                end

                v624.Name = 'ESP'
                v624.FillTransparency = v90.Visuals.ESP.OutlineTransparency
                v622 = 2
            end
            if (v622 == 3) then
                v627 = v623:FindFirstChild('CheatGui') or Instance.new('BillboardGui', v623)
                v628 = v627:FindFirstChild('TextLabel') or Instance.new('TextLabel', v627)
                v627.Name = 'CheatGui'
                v627.Size = UDim2.fromScale(10, 2)
                v622 = 4
            end
            if (v622 == (5)) then
                v628.TextColor3 = v625
                v628.BackgroundTransparency = 1
                v629 = v50[v280:GetAttribute('Character')] or 'Other'
                v630 = v279:GetAttribute('Ultimate') or (0)
                v622 = 6
            end
            if (v622 == 4) then
                v627.StudsOffset = Vector3.new(0, 4, 0)
                v628.Size = UDim2.fromScale(1, 1)
                v628.TextScaled = true
                v628.Font = Enum.Font.RobotoMono
                v622 = 5
            end
        end
    end
end
local function v120(v282, v283, v284)
    local v285 = 0
    local v286
    local v287

    while true do
        if ((0) == v285) then
            v286 = v282:FindFirstChild('ESP')
            v287 = v282:FindFirstChild('Head')
            v285 = 1
        end
        if (v285 == 1) then
            if (v286 and not v284) then
                v286:Destroy()
            end
            if v287 then
                local v770 = 0
                local v771

                while true do
                    if (v770 == (0)) then
                        v771 = v287:FindFirstChild('CheatGui')

                        if v771 then
                            v771:Destroy()
                        end

                        break
                    end
                end
            end

            break
        end
    end
end
local function v121(v288, v289)
    for v598, v599 in pairs(v15:GetChildren())do
        if (v599 ~= v30) then
            local v668 = 0
            local v669

            while true do
                if (v668 == (0)) then
                    v669 = v599.Character

                    if v669 then
                        if v288 then
                            v120(v669, v599, v289)
                        else
                            v119(v599, v669)
                        end
                    end

                    break
                end
            end
        end
    end
end
local function v122(v290, v291)
    if v290 then
        local v631 = 0

        while true do
            if (v631 == 0) then
                for v800, v801 in pairs(v46)do
                    v800.Material = v801
                end

                v46 = {}
                v631 = 1
            end
            if (v631 == (1)) then
                v98({v28, v24}, function(v803, v804)
                    if (v804:IsA('BasePart') or v804:IsA('UnionOperation')) then
                        v46[v804] = v804.Material
                    end
                end)

                for v805, v806 in pairs(v46)do
                    if v291 then
                        v805.Material = Enum.Material.Plastic
                    else
                        v805.Material = v806
                    end
                end

                break
            end
        end
    else
        for v670, v671 in pairs(v46)do
            if v291 then
                v670.Material = Enum.Material.Plastic
            else
                v670.Material = v671
            end
        end
    end
end
local function v123(v292, v293, v294, v295, v296)
    local v297 = 0
    local v298

    while true do
        if (v297 == 2) then
            v91(v298)

            break
        end
        if (v297 == (0)) then
            v298 = nil
            v298 = v12[v292]:Connect(function()
                local v734 = 0

                while true do
                    if (v734 == (0)) then
                        if (not v294 or v294:FindFirstChild('BeingLaunched') or not v294:FindFirstChild('Ragdoll') or (v295.Health <= (0)) or (v62.Health <= (0)) or not v100(v74)) then
                            local v867 = 0

                            while true do
                                local v894 = 0

                                while true do
                                    if (v894 == (0)) then
                                        if (v867 == (0)) then
                                            v66 = false

                                            v91(v298)

                                            v867 = 1
                                        end
                                        if ((1) == v867) then
                                            return
                                        end

                                        break
                                    end
                                end
                            end
                        end

                        v296()

                        break
                    end
                end
            end)
            v297 = 1
        end
        if (v297 == (1)) then
            v66 = false

            task.wait(v293)

            v297 = 2
        end
    end
end
local function v124(v299)
    local v300 = 0
    local v301

    while true do
        if (v300 == 0) then
            v301 = 0

            while true do
                if (v301 == 0) then
                    v66 = true

                    v97()

                    v301 = 1
                end
                if (v301 == 1) then
                    task.wait(v115(1000) + 0.05 + (v299 or (0)))

                    break
                end
            end

            break
        end
    end
end
local function v125(v302, v303, v304)
    local v305 = 0
    local v306

    while true do
        if (v305 == (2)) then
            task.wait(0.3)
            v123('Heartbeat', 0.4, v302, v304, function()
                if (v306 or v114(v303)) then
                    local v807 = 0
                    local v808

                    while true do
                        if ((0) == v807) then
                            v808 = 0

                            while true do
                                if (0 == v808) then
                                    if not v306 then
                                        if v90.AutoTech.LoopDashLooksUp then
                                            v306 = CFrame.lookAt(v63.Position, Vector3.new(v63.Position.X + (1.5), v63.Position.Y + 1.5, v63.Position.Z))
                                        else
                                            v306 = v63.CFrame
                                        end
                                    end

                                    v61:PivotTo(v306)

                                    break
                                end
                            end

                            break
                        end
                    end
                else
                    v104(nil, v303.Position, true)
                end
            end)

            break
        end
        if (v305 == 0) then
            local v672 = 0

            while true do
                if (v672 == 0) then
                    v306 = nil

                    v124()

                    v672 = 1
                end
                if (v672 == (1)) then
                    v305 = 1

                    break
                end
            end
        end
        if (v305 == (1)) then
            v104(90, nil, true)
            v105(270, 0.3, true)

            v305 = 2
        end
    end
end
local function v126(v307, v308, v309)
    if v90.AutoTech.Loopv2.Jump then
        v63.AssemblyLinearVelocity = Vector3.new(v63.AssemblyLinearVelocity.X, 50, v63.AssemblyLinearVelocity.Z)
    end

    v66 = true

    v104(v90.AutoTech.Loopv2.FirstFlickAngle, nil, true)
    v124(v90.AutoTech.Loopv2.SecondFlick)
    v123('Heartbeat', 0.4, v307, v309, function()
        v104(nil, v308.Position, true, v90.AutoTech.Loopv2.Precision)
    end)
end
local function v127(v310, v311, v312)
    local v313 = 0

    while true do
        if (v313 == 0) then
            v124()
            v123('Heartbeat', 0.7, v310, v312, function()
                v104(nil, v311.Position, true, v90.AutoTech.LockonPrecision)
            end)

            break
        end
    end
end
local function v128(v314, v315, v316)
    v124()
    v123('Heartbeat', 0.39999999999997726, v314, v316, function()
        local v600 = v315.Position - Vector3.new(0, 3, 2)
        local v601 = CFrame.new(v600, v315.Position)

        v61:PivotTo(v601)
    end)
end
local function v129(v317, v318, v319)
    local v320 = 0
    local v321

    while true do
        if (v320 == (0)) then
            v124()

            v321 = v318.CFrame:PointToObjectSpace(v63.Position)
            v320 = 1
        end
        if (v320 == 1) then
            v123(v90.AutoTech.SupaMethod, 0.3000000000000007, v317, v319, function()
                local v735 = 0
                local v736
                local v737
                local v738

                while true do
                    if (v735 == (1)) then
                        v738 = nil

                        while true do
                            if (v736 == (0)) then
                                v737 = v318.Position
                                v738 = v318.CFrame:PointToWorldSpace(v321)
                                v736 = 1
                            end
                            if (v736 == 1) then
                                v61:PivotTo(CFrame.lookAt(v738, Vector3.new(v737.X, v738.Y + (1.5), v737.Z), Vector3.new(0, 1, 0)))

                                break
                            end
                        end

                        break
                    end
                    if (v735 == (0)) then
                        v736 = 0
                        v737 = nil
                        v735 = 1
                    end
                end
            end)

            break
        end
    end
end
local function v130(v322)
    v61 = v322
    v62 = v61:WaitForChild('Humanoid')
    v63 = v61:WaitForChild('HumanoidRootPart')
    ptorso = v61:WaitForChild('Torso')
    pleftArm = v61:WaitForChild('Left Arm')
    prightArm = v61:WaitForChild('Right Arm')
    pleftLeg = v61:WaitForChild('Left Leg')
    prightLeg = v61:WaitForChild('Right Leg')
    v64 = v61:WaitForChild('Communicate')
    v65 = v62:WaitForChild('Animator')
    v57 = v50[v322:GetAttribute('Character')] or 'Other'
    workspace.CurrentCamera.FieldOfView = v90.Visuals.FOV

    v23(v67)
    v118()
    v65.AnimationPlayed:Connect(function(v602)
        local v603 = v602.Animation

        if ((v603.AnimationId == ('rbxassetid://' .. v77)) or (v603.AnimationId == ('rbxassetid://' .. v78))) then
            local v673 = 0
            local v674
            local v675
            local v676
            local v677
            local v678

            while true do
                if (v673 == 3) then
                    if (not v676 or not v677) then
                        return
                    end

                    v678 = (v63.Position - v676.Position).Magnitude
                    v673 = 4
                end
                if (v673 == 1) then
                    v675 = v25:FindFirstChild(v674:match('^(.-);;'))

                    if not v675 then
                        return
                    end

                    v673 = 2
                end
                if ((4) == v673) then
                    task.wait(0.38 - v115(1E3))

                    if ((v678 <= (20)) and v90.AutoTech.Enabled and v61:FindFirstChild('RecentM1Hit') and not v59) then
                        local v860 = 0
                        local v861

                        while true do
                            if (v860 == (0)) then
                                v861 = v90.AutoTech.Tech

                                if (v861 == 'Supa') then
                                    v129(v675, v676, v677)
                                elseif (v861 == 'Lock On Dash') then
                                    v127(v675, v676, v677)
                                elseif (v861 == 'Loop Dash') then
                                    v125(v675, v676, v677)
                                elseif (v861 == 'Kiba') then
                                    v128(v675, v676, v677)
                                elseif (v861 == 'Loop Dash v2') then
                                    v126(v675, v676, v677)
                                end

                                break
                            end
                        end
                    end

                    break
                end
                if (v673 == 0) then
                    v674 = v61:GetAttribute('LastM1Hitted')

                    if not v674 then
                        return
                    end

                    v673 = 1
                end
                if (v673 == 2) then
                    local v810 = 0

                    while true do
                        if (v810 == 0) then
                            v676 = v675:FindFirstChild('HumanoidRootPart')
                            v677 = v675:FindFirstChild('Humanoid')
                            v810 = 1
                        end
                        if (v810 == (1)) then
                            v673 = 3

                            break
                        end
                    end
                end
            end
        end
    end)
    v62:GetPropertyChangedSignal('JumpPower'):Connect(function()
        if ((v90.Rage.NoFatigue and not v61:FindFirstChild('NoJump') and v110(v61, v42)) or v90.Rage.AlwaysJump) then
            v62.JumpPower = 50
        end
    end)
    task.wait(0.5)

    counterTool = v30.Backpack:FindFirstChild("Prey's Peril") or v30.Backpack:FindFirstChild('Split Second Counter')
end
local function v131(v325, v326)
    local v327 = 0
    local v328

    while true do
        local v604 = 0

        while true do
            if (v604 == (0)) then
                if (v327 == (0)) then
                    v328 = nil
                    v328 = v12.Heartbeat:Connect(function()
                        if (not v325.Parent or not v63.Parent or (v326.Health <= (0)) or (v62.Health <= (0))) then
                            v91(v328)
                        elseif v110(v63.Parent, v42) then
                            local v900 = 0

                            while true do
                                if (v900 == (0)) then
                                    v62.AutoRotate = false
                                    v63.CFrame = CFrame.new(v63.Position, Vector3.new(v325.Position.X, v63.Position.Y, v325.Position.Z))

                                    break
                                end
                            end
                        end
                    end)
                    v327 = 1
                end
                if (v327 == 1) then
                    local v811 = 0

                    while true do
                        if (v811 == 0) then
                            v20(v43, v328)

                            return v328
                        end
                    end
                end

                break
            end
        end
    end
end
local function v132()
    if not v58 then
        local v633 = 0

        while true do
            if (0 == v633) then
                v58 = true

                v64:FireServer(v83)

                break
            end
        end
    end
end
local function v133()
    if v58 then
        local v634 = 0
        local v635

        while true do
            if (v634 == (0)) then
                v635 = 0

                while true do
                    if (v635 == (0)) then
                        v58 = false

                        v64:FireServer(v84)

                        break
                    end
                end

                break
            end
        end
    end
end
local function v134(v329, v330, v331)
    local v332 = 0
    local v333

    while true do
        if ((2) == v332) then
            v91(v333)
            v133()

            break
        end
        if (v332 == (0)) then
            if v61:FindFirstChild('Counter') then
                return
            end

            v132()

            v332 = 1
        end
        if (v332 == (1)) then
            local v680 = 0

            while true do
                if (v680 == (0)) then
                    v333 = v131(v330, v331)

                    task.wait(v329)

                    v680 = 1
                end
                if (1 == v680) then
                    v332 = 2

                    break
                end
            end
        end
    end
end
local function v135()
    local v334 = 0
    local v335

    while true do
        if (v334 == 0) then
            v335 = 0

            while true do
                if (v335 == (2)) then
                    task.wait()

                    break
                end
                if (v335 == (1)) then
                    task.wait()
                    v64:FireServer(v80)

                    v335 = 2
                end
                if (v335 == (0)) then
                    task.wait()
                    v64:FireServer(v79)

                    v335 = 1
                end
            end

            break
        end
    end
end
local function v136()
    local v336 = 0

    while true do
        if (v336 == 1) then
            v135()
            v95(v68)

            break
        end
        if (v336 == 0) then
            v94(v68)
            task.wait(1E-2)

            v336 = 1
        end
    end
end
local function v137(v337, v338)
    if (v337.Parent and v110(v337.Parent, v40) and not v61:FindFirstChild('CanBringUp')) then
        local v636 = 0
        local v637

        while true do
            if (v636 == 0) then
                v637 = v131(v337, v338)

                v135()

                v636 = 1
            end
            if (v636 == (1)) then
                task.wait(0.1)
                v91(v637)

                break
            end
        end
    end
end
local function v138(v339)
    local v340 = 0
    local v341
    local v342
    local v343
    local v344

    while true do
        if ((2) == v340) then
            v344 = v343:Dot(v342)

            return v344 > 0.7
        end
        if (0 == v340) then
            local v681 = 0

            while true do
                if ((0) == v681) then
                    v341 = v339.AssemblyLinearVelocity

                    if (v341.Magnitude < 0.1) then
                        return
                    end

                    v681 = 1
                end
                if (v681 == (1)) then
                    v340 = 1

                    break
                end
            end
        end
        if (v340 == 1) then
            v342 = (v63.Position - v339.Position).Unit
            v343 = v341.Unit
            v340 = 2
        end
    end
end
local function v139(v345, v346)
    local v347 = 0
    local v348
    local v349
    local v350

    while true do
        if ((2) == v347) then
            if (not v90.Autoblock.AutoM1 or ((v350 > v89) and not ((v350 <= v88) and v138(v345)))) then
                return
            end

            v137(v345, v346)

            break
        end
        if (v347 == 1) then
            v350 = (v348 - v349).Magnitude

            v134(v116(0.25)[1], v345, v346)

            v347 = 2
        end
        if (v347 == 0) then
            local v685 = 0

            while true do
                if (v685 == (1)) then
                    v347 = 1

                    break
                end
                if (v685 == (0)) then
                    v348 = v63.Position
                    v349 = v345.Position
                    v685 = 1
                end
            end
        end
    end
end
local function v140(v351, v352, v353)
    local v354 = 0
    local v355
    local v356
    local v357

    while true do
        if (v354 == (0)) then
            v355 = v131(v351, v352)
            v356 = nil
            v354 = 1
        end
        if (v354 == (1)) then
            v357 = tick()
            v356 = v12.Heartbeat:Connect(function()
                local v739 = 0
                local v740
                local v741
                local v742

                while true do
                    if (v739 == 1) then
                        v742 = nil

                        while true do
                            if (v740 == (1)) then
                                v742 = math.clamp(v741 / (0.10000000000002274), 0, 1)

                                if (v353:FindFirstChild('NoBlock') or ((v63.Position - v351.Position).Magnitude >= (v87 + (5)))) then
                                    local v907 = 0

                                    while true do
                                        if (v907 == 0) then
                                            v91(v355)
                                            v91(v356)

                                            v907 = 1
                                        end
                                        if (v907 == (1)) then
                                            v133()

                                            if (v90.Autoblock.AutoM1 and ((v63.Position - v351.Position).Magnitude <= v89)) then
                                                v137(v351, v352)
                                            end

                                            break
                                        end
                                    end
                                end

                                v740 = 2
                            end
                            if (v740 == 0) then
                                v132()

                                v741 = tick() - v357
                                v740 = 1
                            end
                            if (v740 == 2) then
                                if ((v742 >= 1) and not v353:FindFirstChild('Slowed')) then
                                    local v908 = 0

                                    while true do
                                        if (v908 == (0)) then
                                            v91(v355)
                                            v91(v356)

                                            v908 = 1
                                        end
                                        if ((1) == v908) then
                                            v133()

                                            break
                                        end
                                    end
                                end

                                break
                            end
                        end

                        break
                    end
                    if (v739 == 0) then
                        v740 = 0
                        v741 = nil
                        v739 = 1
                    end
                end
            end)

            break
        end
    end
end
local function v141(v358, v359, v360)
    local v361 = 0
    local v362

    while true do
        if (0 == v361) then
            v362 = v117()

            if (v360 or v362:WaitForChild(4):WaitForChild('Base'):FindFirstChild('Cooldown') or not counterTool or not v90.Autoblock.AutoCounter) then
                return true
            elseif counterTool then
                local v844 = 0
                local v845

                while true do
                    if (0 == v844) then
                        v845 = 0

                        while true do
                            if (v845 == 0) then
                                v64:FireServer({
                                    IsAutoActivate = true,
                                    Goal = 'Console Move',
                                    Tool = counterTool,
                                    ToolName = counterTool.Name,
                                })

                                return false
                            end
                        end

                        break
                    end
                end
            end

            break
        end
    end
end
local function v142(v363, v364, v365)
    local v366 = 0
    local v367

    while true do
        if (v366 == 1) then
            v367 = nil
            v367 = v365.AncestryChanged:Connect(function(v743, v744)
                if not v744 then
                    local v815 = 0

                    while true do
                        if (v815 == (0)) then
                            if ((v90.Visuals.ESP.DeathCounterESP or v90.Visuals.ESP.SaitamaUltESP) and not v90.Visuals.ESP.Enabled) then
                                v120(v364, v363, false)
                            else
                                v119(v363, v364, true)
                            end

                            v91(v367)

                            break
                        end
                    end
                end
            end)

            break
        end
        if (v366 == 0) then
            v119(v363, v364, true)
            v4({
                Title = 'Rif Hub',
                Description = string.format(v363.DisplayName .. ' used <font color="%s">Death Counter!</font>', v109(v90.Visuals.ESP.DeathCounterColor)),
                Image = v108(v363),
            })

            v366 = 1
        end
    end
end
local function v143(v368)
    local v369 = 0
    local v370
    local v371

    while true do
        if (v369 == (0)) then
            v370 = v368.Name
            v371 = v48[v57]
            v369 = 1
        end
        if (v369 == 1) then
            if ((v368:IsA('PointLight') or v368:IsA('SpotLight') or v368:IsA('SurfaceLight')) and v90.Visuals.NoNewLight) then
                v368.Enabled = false
            elseif ((v49[v370] and v90.Visuals.NoSmoke) or ((v370 == 'Clone_Rig') and v90.Visuals.NoGarouC) or ((v21(v39, v370) or (v370 == 'CosmeticAuras')) and v90.Visuals.NoAuras) or (v21(v38, v370) and v90.Visuals.NoCapes) or ((v370 == 'Ring') and v90.Visuals.NoRings)) then
                task.defer(v368.Destroy, v368)
            elseif v371 then
                local v868 = 0
                local v869
                local v870

                while true do
                    if (v868 == (1)) then
                        if (v870 and v90.Visuals.EffectsColor.Enabled and (((v870 == 'true') and v869) or (v870 == 'false')) and (v368:IsA('ParticleEmitter') or v368:IsA('Trail') or v368:IsA('Beam'))) then
                            v368.Color = ColorSequence.new(v90.Visuals.EffectsColor.Color)
                        end

                        break
                    end
                    if (v868 == (0)) then
                        v869 = v368:FindFirstAncestor(v30.Name) or v368.Parent:FindFirstAncestor(v30.Name) or v368.Parent.Parent:FindFirstAncestor(v30.Name)
                        v870 = v371[v370]
                        v868 = 1
                    end
                end
            end

            break
        end
    end
end
local function v144(v372)
    if v372 then
        for v688, v689 in pairs(v15:GetPlayers())do
            local v690 = 0
            local v691

            while true do
                if (v690 == (0)) then
                    v691 = v689.Character

                    if v691 then
                        for v871, v872 in pairs(v691:GetDescendants())do
                            v143(v872)
                        end
                    end

                    break
                end
            end
        end
    end
end
local function v145(v373)
    local v374 = 0
    local v375
    local v376

    while true do
        if (v374 == (3)) then
            v63.CFrame = v375

            v61:SetPrimaryPartCFrame(v375)

            break
        end
        if (2 == v374) then
            if not v373 then
                return
            end

            task.wait(0.15)

            v374 = 3
        end
        if (v374 == 1) then
            v63.CFrame = v376

            v61:SetPrimaryPartCFrame(v376)

            v374 = 2
        end
        if (v374 == (0)) then
            v375 = v63.CFrame
            v376 = v63.CFrame * CFrame.new(math.random(10, 15) * (((math.random(0, 1) == (1)) and 1) or -1), 0, math.random(10, 15) * (((math.random(0, 1) == (1)) and (1)) or -1))
            v374 = 1
        end
    end
end
local function v146(v377)
    if not isrbxactive() then
        return
    end

    local v378 = v377.Name
    local v379 = v377:FindFirstAncestorWhichIsA('Model') or v377.Parent:FindFirstAncestorWhichIsA('Model')
    local v380 = v15:FindFirstChild(v379.Name)

    v143(v377)

    if (v380 and v379 and (v380 ~= v30)) then
        local v638 = v379:FindFirstChild('HumanoidRootPart')
        local v639 = v379:FindFirstChild('Humanoid')

        if (not v639 or not v638 or (v62.Health <= 0) or (v639.Health <= 0)) then
            return
        end
        if (v378 == 'Counter') then
            v142(v380, v379, v377)
        elseif not v101(v380, true) then
            local v817 = 0
            local v818
            local v819
            local v820
            local v821
            local v822

            while true do
                if (v817 == 1) then
                    v820 = v110(v379, v41)
                    v821 = v818 <= v89
                    v817 = 2
                end
                if (v817 == (0)) then
                    local v873 = 0

                    while true do
                        if (v873 == 0) then
                            v818 = (v63.Position - v638.Position).Magnitude
                            v819 = v110(v61, v42)
                            v873 = 1
                        end
                        if (1 == v873) then
                            v817 = 1

                            break
                        end
                    end
                end
                if (v817 == (2)) then
                    v822 = (v818 <= v88) and v138(v638)

                    if ((v378 == 'UsedDash') and v90.Autoblock.DashPredict and v90.Autoblock.Enabled and v819 and v820 and not v821 and not v822) then
                        if (v818 <= v85) then
                            v139(v638, v639)
                        elseif (v818 <= v86) then
                            v137(v638, v639)
                        end
                    elseif (v821 or v822) then
                        if (v90.Autoblock.Enabled and v819 and v820) then
                            local v927 = 0
                            local v928
                            local v929
                            local v930

                            while true do
                                if (v927 == 0) then
                                    local v934 = 0

                                    while true do
                                        if ((0) == v934) then
                                            v928 = v378 == 'M1ing'
                                            v929 = v21(v36, v378)
                                            v934 = 1
                                        end
                                        if (v934 == (1)) then
                                            v927 = 1

                                            break
                                        end
                                    end
                                end
                                if (v927 == (1)) then
                                    v930 = v21(v37, v378)

                                    if (v928 or v929 or v930) then
                                        local v935 = 0
                                        local v936

                                        while true do
                                            if (0 == v935) then
                                                v936 = v141(v638, v639, v822)

                                                if v936 then
                                                    if v928 then
                                                        v139(v638, v639)
                                                    elseif v929 then
                                                        v137(v638, v639)
                                                    elseif v930 then
                                                        v140(v638, v639, v379)
                                                    end
                                                end

                                                break
                                            end
                                        end
                                    end

                                    break
                                end
                            end
                        elseif v90.Rage.AutoDodge then
                            if ((v378 == 'M1ing') or v21(v36, v378)) then
                                v145(true)
                            elseif v21(v37, v378) then
                                v145(false)
                            end
                        end
                    end

                    break
                end
            end
        end
    elseif (v380 == v30) then
        if (((v378 == 'Freeze') and v90.Rage.NoStun) or ((v378 == 'Slowed') and v90.Rage.NoSlow)) then
            task.defer(v377.Destroy, v377)
        elseif ((v378 == 'moveme') and v90.Rage.CustomFrontDash.Enabled and not v90.Rage.CustomFrontDash.OnlyOnKeybind and (v90.Rage.CustomFrontDash.Distance > (1))) then
            v113(v116(v90.Rage.CustomFrontDash.Distance)[1], 5E-2)
        elseif ((v378 == 'dodgevelocity') and (v90.Rage.CustomSideDash.Distance > 1) and v90.Rage.CustomSideDash.Enabled and not v90.Rage.CustomSideDash.OnlyOnKeybind) then
            v113(v116(v90.Rage.CustomSideDash.Distance)[1], 5E-2)
        end
    end
end
local function v147(v381, v382, v383)
    if (v381 == 'Ulted') then
        if v382:GetAttribute(v381) then
            local v745 = 0
            local v746

            while true do
                if (v745 == 0) then
                    v746 = v382:GetAttribute('Character')

                    v4({
                        Title = 'Rif Hub',
                        Description = string.format(v383.DisplayName .. ' used <font color="%s">%s Ult!</font>', v109(v106(v383, v382)), v50[v746]),
                        Image = v108(v383),
                    })

                    v745 = 1
                end
                if (v745 == (1)) then
                    if (v746 == 'Bald') then
                        v119(v383, v382, true)
                    else
                        v119(v383, v382)
                    end

                    break
                end
            end
        elseif (not v90.Visuals.ESP.Enabled and not v382:FindFirstChild('Counter')) then
            v120(v382, v383, false)
        else
            v119(v383, v382)
        end
    end
end
local function v148(v384)
    local v385 = 0
    local v386
    local v387

    while true do
        if (v385 == 2) then
            v386, v387 = pcall(function()
                return v384.Character or v384.CharacterAdded:Wait()
            end)

            if (not v386 or not v387) then
                v387 = v25:FindFirstChild(v384.Name)
            end

            v385 = 3
        end
        if (v385 == 3) then
            v93(v44[v384], v384, 'CharacterAdded', function(v747)
                v93(v45[v384], v747, 'DescendantAdded', v146)

                if (v384 == v30) then
                    return
                end

                v119(v384, v747)
                v93(v45[v384], v387, 'AttributeChanged', function(v776)
                    v147(v776, v747, v384)
                end)
            end)

            if (v384 ~= v30) then
                local v777 = 0
                local v778

                while true do
                    if (v777 == (0)) then
                        v778 = 0

                        while true do
                            if (v778 == (0)) then
                                v93(v44[v384], v384, 'AttributeChanged', function(v911)
                                    local v912 = 0
                                    local v913

                                    while true do
                                        if (0 == v912) then
                                            v913 = v384.Character

                                            if ((v911 == 'Ultimate') and v913) then
                                                v119(v384, v913)
                                            end

                                            break
                                        end
                                    end
                                end)
                                v102(v384)

                                v778 = 1
                            end
                            if (v778 == 1) then
                                if not v387 then
                                    return
                                end

                                v119(v384, v387)

                                v778 = 2
                            end
                            if (v778 == 2) then
                                v93(v45[v384], v387, 'DescendantAdded', v146)
                                v93(v45[v384], v387, 'AttributeChanged', function(v914)
                                    v147(v914, v387, v384)
                                end)

                                break
                            end
                        end

                        break
                    end
                end
            else
                v93(v45[v384], v387, 'DescendantAdded', v146)
            end

            v385 = 4
        end
        if (v385 == (4)) then
            v93(v44[v384], v384, 'CharacterRemoving', function(v748)
                if v45[v384] then
                    v92(v45[v384])
                end
            end)

            break
        end
        if (v385 == (1)) then
            v44[v384] = {}
            v45[v384] = {}
            v385 = 2
        end
        if (v385 == 0) then
            v92(v44[v384])
            v92(v45[v384])

            v385 = 1
        end
    end
end
local function v149(v388, v389)
    if not v388 then
        return
    end

    local v390 = v90

    for v605 in string.gmatch(v388, '[^%.]+')do
        local v606 = 0
        local v607

        while true do
            if (v606 == 0) then
                v607 = 0

                while true do
                    if (v607 == (0)) then
                        if (v390[v605] == nil) then
                            return
                        end
                        if (v605 ~= v388:match('[^%.]+$')) then
                            v390 = v390[v605]
                        else
                            v390[v605] = v389
                        end

                        break
                    end
                end

                break
            end
        end
    end
end
local function v150(v391, v392, v393)
    local v394 = 0

    while true do
        if (v394 == (0)) then
            v149(v391, v393)

            if ((v392 == 'ESP') or (v392 == 'NoBillboards')) then
                v121(not v393)
            elseif ((v392 == 'Custom Ultbar Color') or (v392 == 'Custom Ultbar Text')) then
                v118()
            else
                v144(v393)
            end

            break
        end
    end
end
local function v151(v395)
    local v396 = 0

    while true do
        if (v396 == (0)) then
            v96(v395)
            task.wait()

            v396 = 1
        end
        if (v396 == (2)) then
            task.wait(0.1)
            v95(v71)

            break
        end
        if (v396 == 1) then
            v94(v71)
            v96(v69)

            v396 = 2
        end
    end
end

--// WindUI compatibility layer
--// Keeps Rif Hub feature feature callbacks/settings intact while replacing
--// the entire old UI backend with WindUI.

local v152 = WindUI:CreateWindow({
    Title = 'Rif Hub ' .. v5,
    Author = 'Rif Hub',
    Icon = 'cat',
    Folder = 'RifHub',
    Theme = 'Dark',
    Size = UDim2.fromOffset(650, 520),
    Resizable = true,
    Transparent = false,
})

local function windTab(title, icon)
    return v152:Tab({
        Title = title,
        Icon = icon,
    })
end

local v153 = windTab('Combat', 'swords')
local v154 = windTab('Macro', 'zap')
local v155 = windTab('Visuals', 'eye')
local v156 = windTab('Rage', 'flame')
local v157 = windTab('Misc', 'settings')
local externalTab = windTab('External Macros', 'terminal')

-- Old sections were split left/right. WindUI handles the layout
-- itself, so these wrappers preserve the old section objects without keeping
-- the old UI library around.
local function compatSection(tab, title)
    local section = tab:Section({
        Title = title,
        Opened = true,
    })

    local proxy = {}

    function proxy:toggle(cfg)
        return section:Toggle({
            Title = cfg.name or 'Toggle',
            Default = cfg.def == true,
            Flag = cfg.pointer,
            Callback = cfg.callback,
        })
    end

    function proxy:slider(cfg)
        local min = cfg.min or 0
        local max = cfg.max or 100
        local default = cfg.def
        if default == nil then
            default = min
        end

        return section:Slider({
            Title = cfg.name or 'Slider',
            Value = {
                Min = min,
                Max = max,
                Default = default,
            },
            Step = cfg.rounding and 1 or 0.01,
            Flag = cfg.pointer,
            Callback = cfg.callback,
        })
    end

    function proxy:dropdown(cfg)
        return section:Dropdown({
            Title = cfg.name or 'Dropdown',
            Values = cfg.options or {},
            Value = cfg.def ~= '' and cfg.def or nil,
            Flag = cfg.pointer,
            Callback = function(value)
                -- Different WindUI revisions have returned either the selected
                -- value or a small selection object; normalize both forms.
                if type(value) == 'table' then
                    value = value.Title or value.Value or value[1]
                end
                if cfg.callback then
                    cfg.callback(value)
                end
            end,
        })
    end

    function proxy:keybind(cfg)
        return section:Keybind({
            Title = cfg.name or 'Keybind',
            Value = cfg.def,
            Flag = cfg.pointer,
            Callback = cfg.callback,
        })
    end

    function proxy:textbox(cfg)
        return section:Input({
            Title = cfg.name or 'Input',
            Value = cfg.def or '',
            Placeholder = cfg.placeholder or '',
            Flag = cfg.pointer,
            Callback = cfg.callback,
        })
    end

    function proxy:colorpicker(cfg)
        return section:Colorpicker({
            Title = cfg.name or 'Color',
            Default = cfg.def,
            Flag = cfg.pointer,
            Callback = cfg.callback,
        })
    end

    function proxy:button(cfg)
        return section:Button({
            Title = cfg.name or 'Button',
            Callback = cfg.callback,
        })
    end

    function proxy:configloader(_cfg)
        -- The old config-loader was UI-library-specific. WindUI already has
        -- its own config system; feature state remains in v90 as before.
        return {}
    end

    return proxy
end

local v158 = compatSection(v153, 'Auto Block')
local v159 = compatSection(v153, 'Misc')
local v160 = compatSection(v153, 'Auto Tech')
local v161 = compatSection(v153, 'Auto Tech Settings')
local v162 = compatSection(v153, 'True DownSlam')

local v163 = compatSection(v154, 'True M1 Reset')
local v164 = compatSection(v154, 'Emote Dash')
local v165 = compatSection(v154, 'Backdash Cancel')
local v166 = compatSection(v154, 'Tech Helper')

local v167 = compatSection(v155, 'Clean Look')
local v168 = compatSection(v155, 'Custom Ultbar')
local v169 = compatSection(v155, 'Custom Effects')
local v170 = compatSection(v155, 'ESP')

local v171 = compatSection(v156, 'Toggles')
local v172 = compatSection(v156, 'Fling')
local v173 = compatSection(v156, 'Front Dash')
local v174 = compatSection(v156, 'Side Dash')

local v175 = compatSection(v157, 'Misc')
local v176 = compatSection(v157, 'Config')
local v177 = v176:configloader({
    folder = 'RifHub',
})


--// External Macros Tab
local externalSection = externalTab:Section({
    Title = 'Macro Helper',
    Opened = true,
})

externalTab:Paragraph({
    Title = 'About External Macros',
    Desc = "This is a macro helper tab. These are external/community tech & dash macros. You must create and tune the config yourself inside each macro's own GUI for best results. Click a button below to load the selected macro (it will open its own settings UI).",
})

local loadedMacros = {
    Twisted = false,
    Supa = false,
    LoopDash = false,
    Lethal = false,
}

externalSection:Button({
    Title = 'Load Twisted Macro',
    Callback = function()
        if loadedMacros.Twisted then
            v4({Title = 'Rif Hub', Description = 'Twisted is already loaded.'})
            return
        end
        local ok, err = pcall(function()
            loadstring([[local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local Stats = game:GetService("Stats") 
local player = Players.LocalPlayer

local Config = {
    Enabled = true,
    DashDuration = 0.6,
    Delay = 0.22,        
    NoclipEnabled = true,
    TweenBackDist = 6,
    TweenSpeed = 1,
    NoclipRange = 10,
    AimRange = 10,
    -- CÁC THÔNG SỐ GIỮ NGUYÊN
    Angle1 = 0,
    Angle2 = 85,
    Angle3 = 179,  
    Angle4 = 70,
    TwistDelay = 0.08,
    MenuKey = Enum.KeyCode.L
}

local connections = {}
local dashAnimID = "rbxassetid://13294471966"
local activeTween = nil

--// 1. HÀM XOAY MỚI (ALIGNORIENTATION) ĐƯA LÊN ĐẦU
local function applyTwist(root, hum)
    local att = Instance.new("Attachment", root)
    local align = Instance.new("AlignOrientation", root)
    
    align.Mode = Enum.OrientationAlignmentMode.OneAttachment
    align.Attachment0 = att
    align.RigidityEnabled = false
    align.MaxTorque = 1000000
    align.Responsiveness = 60
    
    local forceOff = RunService.Heartbeat:Connect(function()
        hum.AutoRotate = false
    end)
    
    local function setAngle(angle)
        align.CFrame = root.CFrame * CFrame.Angles(0, math.rad(angle), 0)
    end

    -- Thực hiện xoay 4 giai đoạn
    setAngle(-Config.Angle1)
    task.wait(Config.TwistDelay)
    if align and align.Parent then setAngle(Config.Angle2) end
    task.wait(Config.TwistDelay)
    if align and align.Parent then setAngle(-Config.Angle3) end
    task.wait(Config.TwistDelay)
    if align and align.Parent then setAngle(Config.Angle4) end
    
    task.wait(Config.DashDuration - (Config.TwistDelay * 3))
    
    forceOff:Disconnect()
    align:Destroy()
    att:Destroy()
    hum.AutoRotate = true
end

--// HÀM TÌM MỤC TIÊU
local function getClosestTarget()
    local targetPos, dist = nil, Config.AimRange
    local char = player.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    if not root then return nil end

    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Character then
            local tRoot = p.Character:FindFirstChild("HumanoidRootPart")
            local tHum = p.Character:FindFirstChild("Humanoid")
            if tRoot and tHum and tHum.Health > 0 then
                local d = (root.Position - tRoot.Position).Magnitude
                if d < dist then
                    dist = d
                    local ping = Stats.Network.ServerStatsItem["Data Ping"]:GetValue() / 1000
                    local velocity = tRoot.Velocity
                    local predictionTime = math.clamp(ping, 0, 0.2)
                    targetPos = tRoot.Position + (Vector3.new(velocity.X, 0, velocity.Z) * predictionTime)
                end
            end
        end
    end
    return targetPos
end

--// NOCLIP
local noclipConnection
local function setNoclip(state)
    if state and Config.NoclipEnabled then
        if noclipConnection then noclipConnection:Disconnect() end
        noclipConnection = RunService.Stepped:Connect(function()
            local char = player.Character
            if not char or not char:FindFirstChild("HumanoidRootPart") then return end
            local root = char.HumanoidRootPart
            local params = OverlapParams.new()
            params.FilterType = Enum.RaycastFilterType.Exclude
            params.FilterDescendantsInstances = {char}
            local nearbyParts = workspace:GetPartBoundsInRadius(root.Position, Config.NoclipRange, params)
            for _, part in pairs(nearbyParts) do
                if part:FindFirstAncestorOfClass("Model") and part.Parent:FindFirstChild("Humanoid") then
                    part.CanCollide = false
                end
            end
        end)
    else
        if noclipConnection then noclipConnection:Disconnect(); noclipConnection = nil end
    end
end

local function executeDash()
    local char = player.Character
    local comms = char and char:FindFirstChild("Communicate")
    if comms then
        comms:FireServer({["Dash"] = Enum.KeyCode.W, ["Key"] = Enum.KeyCode.Q, ["Goal"] = "KeyPress"})
    end
end

--// KHỞI TẠO GUI (GIỮ STYLE CŨ, BỎ RAINBOW, FIX DRAG)
local sg = Instance.new("ScreenGui", player.PlayerGui); sg.Name = "Twisted_V3_Final"; sg.ResetOnSpawn = false
local main = Instance.new("Frame", sg); main.Size = UDim2.new(0, 200, 0, 80); main.Position = UDim2.new(0.5, -100, 0.3, 0); main.BackgroundColor3 = Color3.fromRGB(15, 15, 15); main.BorderSizePixel = 0; Instance.new("UICorner", main)
local mStroke = Instance.new("UIStroke", main); mStroke.Thickness = 2; mStroke.Color = Color3.fromRGB(60, 60, 60)

local header = Instance.new("Frame", main); header.Size = UDim2.new(1, 0, 0, 25); header.BackgroundColor3 = Color3.fromRGB(25, 25, 25); Instance.new("UICorner", header)
local title = Instance.new("TextLabel", header); title.Size = UDim2.new(1, 0, 1, 0); title.Text = "TWISTED FIXED"; title.Font = Enum.Font.Michroma; title.TextSize = 12; title.BackgroundTransparency = 1; title.TextColor3 = Color3.new(1,1,1)
local arrowBtn = Instance.new("TextButton", header); arrowBtn.Size = UDim2.new(0, 20, 0, 20); arrowBtn.Position = UDim2.new(1, -25, 0.5, -10); arrowBtn.Text = ">"; arrowBtn.BackgroundTransparency = 1; arrowBtn.TextColor3 = Color3.new(1,1,1)

local settingsFrame = Instance.new("Frame", main); settingsFrame.Size = UDim2.new(0, 150, 0, 240); settingsFrame.Position = UDim2.new(1, 10, 0, 0); settingsFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15); settingsFrame.Visible = false; Instance.new("UICorner", settingsFrame)
local sStroke = Instance.new("UIStroke", settingsFrame); sStroke.Thickness = 2; sStroke.Color = Color3.fromRGB(60, 60, 60)

local function createSetting(txt, confKey, pos)
    local l = Instance.new("TextLabel", settingsFrame); l.Size = UDim2.new(0.5, 0, 0, 20); l.Position = UDim2.new(0.05, 0, pos, 0); l.Text = txt; l.BackgroundTransparency = 1; l.TextXAlignment = 0; l.TextSize = 9; l.Font = Enum.Font.SourceSansBold; l.TextColor3 = Color3.new(1,1,1)
    local b = Instance.new("TextBox", settingsFrame); b.Size = UDim2.new(0.35, 0, 0, 15); b.Position = UDim2.new(0.55, 0, pos + 0.01, 0); b.Text = tostring(Config[confKey]); b.BackgroundColor3 = Color3.fromRGB(30, 30, 30); b.TextSize = 10; b.TextColor3 = Color3.new(1,1,1); Instance.new("UICorner", b)
    b.FocusLost:Connect(function() local v = tonumber(b.Text) if v then Config[confKey] = v b.Text = tostring(v) end end)
end

createSetting("Delay Dash:", "Delay", 0.05); createSetting("Back Dist:", "TweenBackDist", 0.15); createSetting("R1 Angle:", "Angle1", 0.25); createSetting("L1 Angle:", "Angle2", 0.35); createSetting("R2 Angle:", "Angle3", 0.45); createSetting("L2 Angle:", "Angle4", 0.55); createSetting("Twist Spd:", "TwistDelay", 0.65); createSetting("Aim Range:", "AimRange", 0.75)

arrowBtn.MouseButton1Click:Connect(function() settingsFrame.Visible = not settingsFrame.Visible arrowBtn.Text = settingsFrame.Visible and "<" or ">" end)

local coreBtn = Instance.new("TextButton", main); coreBtn.Size = UDim2.new(0.9, 0, 0, 30); coreBtn.Position = UDim2.new(0.05, 0, 0.5, 0); coreBtn.Text = "STATUS: ON"; coreBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30); coreBtn.TextColor3 = Color3.new(0, 1, 0); Instance.new("UICorner", coreBtn)
coreBtn.MouseButton1Click:Connect(function() Config.Enabled = not Config.Enabled coreBtn.Text = Config.Enabled and "STATUS: ON" or "STATUS: OFF" coreBtn.TextColor3 = Config.Enabled and Color3.new(0,1,0) or Color3.new(1,0,0) end)

local minusBtn = Instance.new("TextButton", main); minusBtn.Size = UDim2.new(0, 20, 0, 20); minusBtn.Position = UDim2.new(1, -22, 1, -22); minusBtn.Text = "-"; minusBtn.BackgroundTransparency = 1; minusBtn.TextColor3 = Color3.new(1,1,1)
local dBtn = Instance.new("TextButton", sg); dBtn.Size = UDim2.new(0, 100, 0, 25); dBtn.Visible = false; dBtn.Text = "Destroy GUI"; dBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30); dBtn.TextColor3 = Color3.new(1,0,0); Instance.new("UICorner", dBtn); Instance.new("UIStroke", dBtn).Color = Color3.new(1,0,0)

minusBtn.MouseButton1Click:Connect(function() dBtn.Visible = not dBtn.Visible dBtn.Position = UDim2.new(0, main.AbsolutePosition.X + 50, 0, main.AbsolutePosition.Y + 85) end)

--// 2. HÀM DESTROY SCRIPT ĐẦY ĐỦ
dBtn.MouseButton1Click:Connect(function() 
    for _, c in pairs(connections) do c:Disconnect() end 
    setNoclip(false) 
    sg:Destroy() 
    script:Destroy() -- Xoá script khỏi bộ nhớ
end)

--// 3. FIX DRAG (HỖ TRỢ CẢ PC VÀ MOBILE)
local dragToggle, dragInput, dragStart, startPos
local function updateInput(input)
    local delta = input.Position - dragStart
    main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

header.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragToggle = true
        dragStart = input.Position
        startPos = main.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragToggle = false
            end
        end)
    end
end)

UIS.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

RunService.RenderStepped:Connect(function()
    if dragToggle and dragInput then
        updateInput(dragInput)
    end
end)

--// KEYBIND L ĐỂ ẨN/HIỆN
UIS.InputBegan:Connect(function(i, gpe)
    if not gpe and i.KeyCode == Config.MenuKey then
        main.Visible = not main.Visible
        if settingsFrame.Visible then settingsFrame.Visible = false arrowBtn.Text = ">" end
    end
end)

--// MAIN LOGIC
local function onCharacter(char)
    local hum = char:WaitForChild("Humanoid")
    local root = char:WaitForChild("HumanoidRootPart")
    local animConn = hum.AnimationPlayed:Connect(function(track)
        if track.Animation.AnimationId == dashAnimID and Config.Enabled then
            local targetPos = getClosestTarget()
            if targetPos then
                hum.AutoRotate = false
                root.CFrame = CFrame.lookAt(root.Position, Vector3.new(targetPos.X, root.Position.Y, targetPos.Z))
            end

            task.spawn(function()
                if Config.TweenBackDist > 0 then
                    if activeTween then activeTween:Cancel() end
                    activeTween = TweenService:Create(root, TweenInfo.new(Config.TweenSpeed, Enum.EasingStyle.Cubic), {CFrame = root.CFrame * CFrame.new(0, 0, Config.TweenBackDist)})
                    activeTween:Play()
                end
            end)

            task.spawn(function()
                setNoclip(true); task.wait(Config.Delay)
                if activeTween then activeTween:Cancel(); activeTween = nil end
                executeDash()
                applyTwist(root, hum)
                task.wait(Config.DashDuration)
                setNoclip(false)
            end)
        end
    end)
    table.insert(connections, animConn)
end

if player.Character then onCharacter(player.Character) end
table.insert(connections, player.CharacterAdded:Connect(onCharacter))]])()
        end)
        if ok then
            loadedMacros.Twisted = true
            v4({Title = 'Rif Hub', Description = 'Twisted Macro loaded successfully!'})
        else
            v4({Title = 'Rif Hub', Description = 'Failed to load Twisted: ' .. tostring(err)})
        end
    end,
})

externalSection:Button({
    Title = 'Load Supa Macro',
    Callback = function()
        if loadedMacros.Supa then
            v4({Title = 'Rif Hub', Description = 'Supa is already loaded.'})
            return
        end
        local ok, err = pcall(function()
            loadstring([[local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local Config = {
    Enabled = true,
    CooldownEnabled = true,
    CooldownTime = 4.9,
    Delay = 0.285,           
    TweenBackDist = 3,      
    TweenSpeed = 0.5,       
    LookUpDegree = 70,      
    LookUpTime = 0.4,       
    LookDuration = 0.2,     
    CancelDelay = 111,
    AimRange = 15
}

local lastDashTick = 0
local connections = {}
local isDashing = false

--// FIX AIM: CHỈ NGƯỜI CHƠI
local function getClosestTarget()
    local target, dist = nil, Config.AimRange
    local char = player.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    if not root then return nil end

    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Character then
            local tRoot = p.Character:FindFirstChild("HumanoidRootPart")
            local tHum = p.Character:FindFirstChild("Humanoid")
            if tRoot and tHum and tHum.Health > 0 then
                local d = (root.Position - tRoot.Position).Magnitude
                if d < dist then dist = d target = tRoot end
            end
        end
    end
    return target
end

local function forceCancel()
    local char = player.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    if hrp then
        for _, obj in pairs(hrp:GetChildren()) do
            if obj:IsA("BodyVelocity") or obj:IsA("LinearVelocity") or obj:IsA("Attachment") or obj:IsA("BodyGyro") then obj:Destroy() end
        end
        hrp.AssemblyLinearVelocity = Vector3.zero
        hrp.Anchored = true; task.wait(0.03); hrp.Anchored = false
    end
    if char and char:FindFirstChild("Humanoid") then char.Humanoid.AutoRotate = true end
    isDashing = false
end

--// GUI SYSTEM (FIXED VỊ TRÍ & SETTING)
local sg = Instance.new("ScreenGui", player.PlayerGui); sg.Name = "Legit-Supa-Final-Fix"; sg.ResetOnSpawn = false

local penguinIcon = Instance.new("TextButton", sg)
penguinIcon.Size = UDim2.new(0, 40, 0, 40); penguinIcon.Position = UDim2.new(0.05, 0, 0.4, 0); penguinIcon.BackgroundColor3 = Color3.fromRGB(20, 20, 20); penguinIcon.Text = "🐧"; penguinIcon.TextSize = 25; penguinIcon.Active = true; penguinIcon.Draggable = true; Instance.new("UICorner", penguinIcon).CornerRadius = UDim.new(1, 0)

local main = Instance.new("Frame", sg); main.Size = UDim2.new(0, 200, 0, 100); main.Position = UDim2.new(0.5, -100, 0.3, 0); main.BackgroundColor3 = Color3.new(0,0,0); main.Visible = true; main.Active = true; main.Draggable = true; Instance.new("UICorner", main)
local mStroke = Instance.new("UIStroke", main); mStroke.Thickness = 2; mStroke.Color = Color3.new(1,1,1)

penguinIcon.MouseButton1Click:Connect(function() main.Visible = not main.Visible end)

local header = Instance.new("Frame", main); header.Size = UDim2.new(1, 0, 0, 25); header.BackgroundColor3 = Color3.fromRGB(15, 15, 15); Instance.new("UICorner", header)
local title = Instance.new("TextLabel", header); title.Size = UDim2.new(1, 0, 1, 0); title.Text = "Legit Supa-Dash"; title.Font = Enum.Font.Michroma; title.TextSize = 13; title.BackgroundTransparency = 1; title.TextColor3 = Color3.new(1,1,1)

local gearBtn = Instance.new("TextButton", header); gearBtn.Size = UDim2.new(0, 25, 0, 25); gearBtn.Position = UDim2.new(1, -30, 0, 0); gearBtn.Text = "⚙️"; gearBtn.TextSize = 18; gearBtn.BackgroundTransparency = 1; gearBtn.TextColor3 = Color3.new(1,1,1)

local toggleBtn = Instance.new("TextButton", main); toggleBtn.Size = UDim2.new(0.85, 0, 0, 30); toggleBtn.Position = UDim2.new(0.075, 0, 0.35, 0); toggleBtn.Text = "STATUS: ON"; toggleBtn.Font = Enum.Font.SourceSansBold; toggleBtn.TextSize = 14; toggleBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 0); toggleBtn.TextColor3 = Color3.new(1, 1, 1); Instance.new("UICorner", toggleBtn)
local cdBack = Instance.new("Frame", main); cdBack.Size = UDim2.new(0.85, 0, 0, 4); cdBack.Position = UDim2.new(0.075, 0, 0.72, 0); cdBack.BackgroundColor3 = Color3.fromRGB(50, 50, 50); cdBack.BorderSizePixel = 0
local cdFill = Instance.new("Frame", cdBack); cdFill.Size = UDim2.new(0, 0, 1, 0); cdFill.BackgroundColor3 = Color3.new(1, 1, 1); cdFill.BorderSizePixel = 0

local minusBtn = Instance.new("TextButton", main); minusBtn.Size = UDim2.new(0, 15, 0, 15); minusBtn.Position = UDim2.new(1, -20, 1, -20); minusBtn.Text = "-"; minusBtn.BackgroundTransparency = 1; minusBtn.TextColor3 = Color3.new(1,1,1); minusBtn.TextSize = 18
local destroyBtn = Instance.new("TextButton", main); destroyBtn.Size = UDim2.new(0.85, 0, 0, 20); destroyBtn.Position = UDim2.new(0.075, 0, 1.1, 0); destroyBtn.Text = "DESTROY SCRIPT"; destroyBtn.BackgroundColor3 = Color3.fromRGB(150, 0, 0); destroyBtn.TextColor3 = Color3.new(1,1,1); destroyBtn.Visible = false; destroyBtn.Font = Enum.Font.SourceSansBold; destroyBtn.TextSize = 12; Instance.new("UICorner", destroyBtn)

minusBtn.MouseButton1Click:Connect(function() destroyBtn.Visible = not destroyBtn.Visible end)
destroyBtn.MouseButton1Click:Connect(function() for _, conn in pairs(connections) do conn:Disconnect() end sg:Destroy() end)
toggleBtn.MouseButton1Click:Connect(function() Config.Enabled = not Config.Enabled; toggleBtn.Text = Config.Enabled and "STATUS: ON" or "STATUS: OFF"; toggleBtn.BackgroundColor3 = Config.Enabled and Color3.fromRGB(0, 150, 0) or Color3.fromRGB(150, 0, 0) end)

--// SETTINGS FRAME (FIXED)
local settingsFrame = Instance.new("Frame", main); settingsFrame.Size = UDim2.new(0, 165, 0, 220); settingsFrame.Position = UDim2.new(1, 10, 0, 0); settingsFrame.BackgroundColor3 = Color3.new(0,0,0); settingsFrame.Visible = false; Instance.new("UICorner", settingsFrame)
local sStroke = Instance.new("UIStroke", settingsFrame); sStroke.Thickness = 2; sStroke.Color = Color3.new(1,1,1)

local function createSetting(txt, confKey, pos, isToggle)
    local l = Instance.new("TextLabel", settingsFrame); l.Size = UDim2.new(0.55, 0, 0, 25); l.Position = UDim2.new(0.05, 0, pos, 0); l.Text = txt; l.BackgroundTransparency = 1; l.TextXAlignment = 0; l.TextSize = 10; l.Font = Enum.Font.SourceSansBold; l.TextColor3 = Color3.new(1,1,1)
    if isToggle then
        local b = Instance.new("TextButton", settingsFrame); b.Size = UDim2.new(0.3, 0, 0, 18); b.Position = UDim2.new(0.65, 0, pos + 0.02, 0); b.Text = Config[confKey] and "ON" or "OFF"; b.BackgroundColor3 = Config[confKey] and Color3.fromRGB(0,100,0) or Color3.fromRGB(100,0,0); b.TextSize = 10; b.TextColor3 = Color3.new(1,1,1); Instance.new("UICorner", b)
        b.MouseButton1Click:Connect(function() Config[confKey] = not Config[confKey] b.Text = Config[confKey] and "ON" or "OFF" b.BackgroundColor3 = Config[confKey] and Color3.fromRGB(0,100,0) or Color3.fromRGB(100,0,0) end)
    else
        local b = Instance.new("TextBox", settingsFrame); b.Size = UDim2.new(0.3, 0, 0, 18); b.Position = UDim2.new(0.65, 0, pos + 0.02, 0); b.Text = tostring(Config[confKey]); b.BackgroundColor3 = Color3.fromRGB(30, 30, 30); b.TextSize = 11; b.TextColor3 = Color3.new(1,1,1); Instance.new("UICorner", b)
        b.FocusLost:Connect(function() local v = tonumber(b.Text) if v then Config[confKey] = v end end)
    end
end

createSetting("CD Logic", "CooldownEnabled", 0.02, true); createSetting("CD Time", "CooldownTime", 0.14, false); createSetting("Dash Del:", "Delay", 0.26, false); createSetting("Back Dist:", "TweenBackDist", 0.38, false); createSetting("Tween Spd:", "TweenSpeed", 0.50, false); createSetting("Look Deg:", "LookUpDegree", 0.62, false); createSetting("Look Time:", "LookUpTime", 0.74, false); createSetting("Look Dur:", "LookDuration", 0.86, false)

gearBtn.MouseButton1Click:Connect(function() settingsFrame.Visible = not settingsFrame.Visible end)

--// LOGIC CHÍNH
local function onCharacter(char)
    local hum = char:WaitForChild("Humanoid")
    local root = char:WaitForChild("HumanoidRootPart")
    local animConn = hum.AnimationPlayed:Connect(function(track)
        if track.Animation.AnimationId == "rbxassetid://10503381238" and Config.Enabled then
            if Config.CooldownEnabled and (tick() - lastDashTick < Config.CooldownTime) then return end
            lastDashTick = tick(); isDashing = true

            local target = getClosestTarget()
            if target then
                hum.AutoRotate = false
                root.CFrame = CFrame.lookAt(root.Position, Vector3.new(target.Position.X, root.Position.Y, target.Position.Z))
            end

            task.spawn(function()
                if Config.TweenBackDist > 0 then
                    TweenService:Create(root, TweenInfo.new(Config.TweenSpeed, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {CFrame = root.CFrame * CFrame.new(0, 0, Config.TweenBackDist)}):Play()
                end
            end)

            task.delay(Config.LookUpTime, function()
                if Config.Enabled then
                    hum.AutoRotate = false
                    local bg = Instance.new("BodyGyro", root); bg.P = 20000; bg.MaxTorque = Vector3.new(math.huge, math.huge, math.huge); bg.CFrame = root.CFrame * CFrame.Angles(math.rad(Config.LookUpDegree), 0, 0)
                    task.wait(Config.LookDuration)
                    if bg then bg:Destroy() end; hum.AutoRotate = true
                end
            end)

            task.delay(Config.Delay, function()
                if Config.Enabled then 
                    local c = char:FindFirstChild("Communicate")
                    if c then c:FireServer({["Dash"] = Enum.KeyCode.W, ["Key"] = Enum.KeyCode.Q, ["Goal"] = "KeyPress"}) end
                end
            end)
            task.delay(Config.CancelDelay, forceCancel)
        end
    end)
    table.insert(connections, animConn)
end

table.insert(connections, RunService.Heartbeat:Connect(function()
    if Config.CooldownEnabled then
        local elapsed = tick() - lastDashTick
        cdFill.Size = UDim2.new(math.clamp(1 - (elapsed / Config.CooldownTime), 0, 1), 0, 1, 0)
    end
end))

if player.Character then onCharacter(player.Character) end
table.insert(connections, player.CharacterAdded:Connect(onCharacter))]])()
        end)
        if ok then
            loadedMacros.Supa = true
            v4({Title = 'Rif Hub', Description = 'Supa Macro loaded successfully!'})
        else
            v4({Title = 'Rif Hub', Description = 'Failed to load Supa: ' .. tostring(err)})
        end
    end,
})

externalSection:Button({
    Title = 'Load Loop Dash Macro',
    Callback = function()
        if loadedMacros.LoopDash then
            v4({Title = 'Rif Hub', Description = 'Loop Dash is already loaded.'})
            return
        end
        local ok, err = pcall(function()
            loadstring([[--// PREMIUM MINIMALIST GUI REWRITE (BLACK/WHITE/GRAY)
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local VIM = game:GetService("VirtualInputManager")
local player = game.Players.LocalPlayer

--// OLD SCRIPT TERMINATION SYSTEM
local scriptId = math.random(1, 1000000)
_G.SkidwareId = scriptId
local function isCurrent() return _G.SkidwareId == scriptId end

--// CONFIG
local Config = {
    Enabled = true,
    LethalEnabled = true,
    LethalAnim = "rbxassetid://10503381238",
    LethalDelay = 0.232,
    LethalJump = 55,
    LethalAccuracy = 15,
    LethalCancelDelay = 0.4,
    LethalMode = "V1",
    CancelEnabled = true,
    CooldownActive = true,
    NoClipEnabled = true,
    DashRange = 8,
    TouchMode = false,
    Platform = "PC",
    Keybind = "E",
    CooldownAnims = {
        ["10491993682"] = true,
        ["10479335397"] = true,
        ["13380255751"] = true,
    }
}

local dashAnims = {["rbxassetid://12296113986"] = true}
local isNoclipping = false
local isCooldown = false

-- // GLOBAL GUI VARIABLES
local ScreenGui, MainFrame, CooldownBar, CooldownFill

-- // NUMERIC ID EXTRACTION FUNCTION
local function getId(str)
    return tostring(str):match("%d+")
end

--// NEW DASH FUNCTION (USING REMOTEEVENT)
local function fireDash()
    local char = player.Character
    if not char then return end
    local communicate = char:FindFirstChild("Communicate")
    if communicate then
        local args = {{
            Dash = Enum.KeyCode.W,
            Key = Enum.KeyCode.Q,
            Goal = "KeyPress"
        }}
        communicate:FireServer(unpack(args))
    end
end

--// HELPER FUNCTIONS
local function clip()
    isNoclipping = false
    if player.Character then
        local hum = player.Character:FindFirstChild("Humanoid")
        if hum then hum.AutoRotate = true end
    end
end

local function forceCancel()
    clip()
    local char = player.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    if hrp then
        for _, obj in pairs(hrp:GetChildren()) do
            if obj:IsA("BodyVelocity") or obj:IsA("LinearVelocity") or obj:IsA("Attachment") or obj:IsA("BodyAngularVelocity") then
                obj:Destroy()
            end
        end
        hrp.AssemblyLinearVelocity = Vector3.zero
    end
end

-- // COOLDOWN HANDLING FUNCTION
local function startCooldown(duration)
    if not isCurrent() or isCooldown then return end
    isCooldown = true
    
    if MainFrame and CooldownBar and CooldownFill then
        CooldownBar.Visible = true
        CooldownFill.Size = UDim2.new(1, 0, 1, 0)
        local tween = TweenService:Create(CooldownFill, TweenInfo.new(duration, Enum.EasingStyle.Linear), {Size = UDim2.new(0, 0, 1, 0)})
        tween:Play()
        
        task.delay(duration, function()
            isCooldown = false
            CooldownBar.Visible = false
        end)
    else
        task.wait(duration)
        isCooldown = false
    end
end

local function getTorsoTarget()
    local char = player.Character
    if not char or not char:FindFirstChild("HumanoidRootPart") then return nil end
    
    local params = OverlapParams.new()
    params.FilterType = Enum.RaycastFilterType.Exclude
    params.FilterDescendantsInstances = {char}
    
    local parts = workspace:GetPartBoundsInRadius(char.HumanoidRootPart.Position, Config.DashRange, params)
    local target = nil
    local dist = Config.DashRange
    
    for _, part in pairs(parts) do
        local model = part:FindFirstAncestorOfClass("Model")
        if model and model:FindFirstChild("Humanoid") and model ~= char then
            local torso = model:FindFirstChild("Torso") or model:FindFirstChild("UpperTorso") or model:FindFirstChild("HumanoidRootPart")
            if torso then
                local d = (char.HumanoidRootPart.Position - torso.Position).Magnitude
                if d < dist then 
                    dist = d 
                    target = torso 
                end
            end
        end
    end
    return target
end

--// LETHAL EXECUTION FUNCTION
local isExecuting = false
local function executeLethal()
    if not isCurrent() or isExecuting or isCooldown then return end
    if not Config.Enabled or not Config.LethalEnabled then return end
    
    local char = player.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    local hum = char and char:FindFirstChild("Humanoid")
    if not root or not hum then return end

    local torso = getTorsoTarget()
    if not torso then clip() return end
    
    isExecuting = true
    
    if not Config.TouchMode then
        task.wait(Config.LethalDelay)
    end
    
    if not isCurrent() then isExecuting = false return end
    
    root.AssemblyLinearVelocity = Vector3.new(root.AssemblyLinearVelocity.X, Config.LethalJump, root.AssemblyLinearVelocity.Z)
    isNoclipping = true
    fireDash()
    
    local startT = tick()
    local flipped = false
    local forwardDir = (torso.Position - root.Position).Unit
    local sideVec = Vector3.new(-forwardDir.Z, 0, forwardDir.X)
    local bav = nil
    
    if Config.LethalMode == "V1" then
        bav = Instance.new("BodyAngularVelocity")
        bav.MaxTorque = Vector3.new(0, 1000000, 0)
        bav.P = 15000
        bav.Parent = root
    end
    
    local conn
    conn = RunService.Heartbeat:Connect(function()
        if not isCurrent() or not torso or not torso.Parent or not root or not root.Parent then 
            if bav then bav:Destroy() end 
            clip()
            isExecuting = false
            if conn then conn:Disconnect() end
            return 
        end
        
        local elapsed = tick() - startT
        local torsoPos, rootPos = torso.Position, root.Position
        hum.AutoRotate = false
        
        if Config.LethalMode == "V1" then
            local angle = (elapsed / 0.45) * (math.pi / 1.5)
            local radius = Config.LethalAccuracy * (1 - math.clamp(elapsed / 0.45, 0, 1))
            local targetLookPos = torsoPos + (sideVec * math.cos(angle) + forwardDir * math.sin(angle)) * radius
            local lookAtCF = CFrame.lookAt(rootPos, Vector3.new(targetLookPos.X, rootPos.Y, targetLookPos.Z))
            local relativeCF = root.CFrame:Inverse() * lookAtCF
            local _, y, _ = relativeCF:ToEulerAnglesXYZ()
            if bav and bav.Parent then 
                bav.AngularVelocity = Vector3.new(0, y * 30, 0) 
            end
        else
            if elapsed >= Config.LethalAccuracy and not flipped then
                root.CFrame = root.CFrame * CFrame.Angles(0, math.pi, 0)
                flipped = true
            end
        end

        local distXZ = (Vector2.new(rootPos.X, rootPos.Z) - Vector2.new(torsoPos.X, torsoPos.Z)).Magnitude
        if Config.CancelEnabled and elapsed > Config.LethalCancelDelay then
            if distXZ < 2.2 then
                if bav then bav:Destroy() end
                forceCancel()
                isExecuting = false
                conn:Disconnect()
                return
            end
        end
        
        if not Config.Enabled or elapsed > 1.5 then
            if bav then bav:Destroy() end
            clip()
            isExecuting = false
            conn:Disconnect()
            return
        end
    end)
end

--// GUI SYSTEM CLEANUP & SETUP (REMOVES OLD EXECUTED GUIS)
for _, gui in pairs(game.CoreGui:GetChildren()) do
    if gui.Name == "SkidwareUI" or gui.Name == "VuxLethalUI" then
        gui:Destroy()
    end
end

ScreenGui = Instance.new("ScreenGui", game.CoreGui)
ScreenGui.Name = "SkidwareUI"
ScreenGui.ResetOnSpawn = false

MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Name = "MainFrame"
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
MainFrame.BorderSizePixel = 0
MainFrame.Size = UDim2.new(0, 320, 0, 260)
MainFrame.Position = UDim2.new(0.5, -160, 0.4, -130)
MainFrame.Draggable = true
MainFrame.Active = true
MainFrame.ClipsDescendants = true

local function applyCorner(obj, radius)
    local corner = Instance.new("UICorner", obj)
    corner.CornerRadius = UDim.new(0, radius or 6)
end
applyCorner(MainFrame, 8)

local MainStroke = Instance.new("UIStroke", MainFrame)
MainStroke.Color = Color3.fromRGB(45, 45, 45)
MainStroke.Thickness = 1

--// TOP BAR
local TopBar = Instance.new("Frame", MainFrame)
TopBar.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
TopBar.BorderSizePixel = 0
TopBar.Size = UDim2.new(1, 0, 0, 36)
applyCorner(TopBar, 8)

local TopBarCover = Instance.new("Frame", TopBar)
TopBarCover.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
TopBarCover.BorderSizePixel = 0
TopBarCover.Size = UDim2.new(1, 0, 0, 8)
TopBarCover.Position = UDim2.new(0, 0, 1, -8)

local Title = Instance.new("TextLabel", TopBar)
Title.Text = "  skidware"
Title.Size = UDim2.new(0.6, 0, 1, 0)
Title.Position = UDim2.new(0.02, 0, 0, 0)
Title.TextColor3 = Color3.fromRGB(240, 240, 240)
Title.BackgroundTransparency = 1
Title.Font = Enum.Font.GothamBold
Title.TextSize = 12
Title.TextXAlignment = Enum.TextXAlignment.Left

--// DESTROY BUTTON
local DestroyBtn = Instance.new("TextButton", TopBar)
DestroyBtn.Text = "×"
DestroyBtn.Size = UDim2.new(0, 24, 0, 24)
DestroyBtn.Position = UDim2.new(1, -30, 0.5, -12)
DestroyBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
DestroyBtn.TextColor3 = Color3.fromRGB(180, 180, 180)
DestroyBtn.Font = Enum.Font.GothamBold
DestroyBtn.TextSize = 14
applyCorner(DestroyBtn, 4)

local lastDestroyClick = 0
DestroyBtn.MouseButton1Click:Connect(function()
    local currentTime = tick()
    if currentTime - lastDestroyClick <= 5 then
        forceCancel()
        ScreenGui:Destroy()
    else
        lastDestroyClick = currentTime
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Confirm",
            Text = "Click '×' again to destroy script.",
            Duration = 5,
        })
    end
end)

--// MINIMIZE BUTTON
local MinimizeBtn = Instance.new("TextButton", TopBar)
MinimizeBtn.Text = "-"
MinimizeBtn.Size = UDim2.new(0, 24, 0, 24)
MinimizeBtn.Position = UDim2.new(1, -58, 0.5, -12)
MinimizeBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MinimizeBtn.TextColor3 = Color3.fromRGB(180, 180, 180)
MinimizeBtn.Font = Enum.Font.GothamBold
MinimizeBtn.TextSize = 14
applyCorner(MinimizeBtn, 4)

local isMinimized = false
MinimizeBtn.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized
    MinimizeBtn.Text = isMinimized and "+" or "-"
    
    local targetSize = isMinimized and UDim2.new(0, 320, 0, 36) or UDim2.new(0, 320, 0, 260)
    TweenService:Create(MainFrame, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = targetSize}):Play()
end)

--// TAB BUTTONS CONTAINER
local TabHeader = Instance.new("Frame", MainFrame)
TabHeader.BackgroundTransparency = 1
TabHeader.Size = UDim2.new(1, -16, 0, 28)
TabHeader.Position = UDim2.new(0, 8, 0, 44)

local HomeTabBtn = Instance.new("TextButton", TabHeader)
HomeTabBtn.Size = UDim2.new(0.48, 0, 1, 0)
HomeTabBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
HomeTabBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
HomeTabBtn.Text = "Home"
HomeTabBtn.Font = Enum.Font.GothamSemibold
HomeTabBtn.TextSize = 11
applyCorner(HomeTabBtn, 5)

local SettingsTabBtn = Instance.new("TextButton", TabHeader)
SettingsTabBtn.Size = UDim2.new(0.48, 0, 1, 0)
SettingsTabBtn.Position = UDim2.new(0.52, 0, 0, 0)
SettingsTabBtn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
SettingsTabBtn.TextColor3 = Color3.fromRGB(130, 130, 130)
SettingsTabBtn.Text = "Settings"
SettingsTabBtn.Font = Enum.Font.GothamSemibold
SettingsTabBtn.TextSize = 11
applyCorner(SettingsTabBtn, 5)

--// TAB CONTAINERS
local ContainerHolder = Instance.new("Frame", MainFrame)
ContainerHolder.BackgroundTransparency = 1
ContainerHolder.Size = UDim2.new(1, -16, 1, -84)
ContainerHolder.Position = UDim2.new(0, 8, 0, 78)

local HomeContainer = Instance.new("ScrollingFrame", ContainerHolder)
HomeContainer.Size = UDim2.new(1, 0, 1, 0)
HomeContainer.BackgroundTransparency = 1
HomeContainer.CanvasSize = UDim2.new(0, 0, 0, 140)
HomeContainer.ScrollBarThickness = 2
HomeContainer.Visible = true

local HomeLayout = Instance.new("UIListLayout", HomeContainer)
HomeLayout.Padding = UDim.new(0, 8)
HomeLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

local SettingsContainer = Instance.new("ScrollingFrame", ContainerHolder)
SettingsContainer.Size = UDim2.new(1, 0, 1, 0)
SettingsContainer.BackgroundTransparency = 1
SettingsContainer.CanvasSize = UDim2.new(0, 0, 0, 310)
SettingsContainer.ScrollBarThickness = 2
SettingsContainer.Visible = false

local SettingsLayout = Instance.new("UIListLayout", SettingsContainer)
SettingsLayout.Padding = UDim.new(0, 6)
SettingsLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

-- Switch Tab Logic
HomeTabBtn.MouseButton1Click:Connect(function()
    HomeContainer.Visible = true
    SettingsContainer.Visible = false
    HomeTabBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    HomeTabBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    SettingsTabBtn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    SettingsTabBtn.TextColor3 = Color3.fromRGB(130, 130, 130)
end)

SettingsTabBtn.MouseButton1Click:Connect(function()
    HomeContainer.Visible = false
    SettingsContainer.Visible = true
    SettingsTabBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    SettingsTabBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    HomeTabBtn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    HomeTabBtn.TextColor3 = Color3.fromRGB(130, 130, 130)
end)

--// HOME TAB COMPONENTS (Toggles & Mode Switch)
local ToggleBtn = Instance.new("TextButton", HomeContainer)
ToggleBtn.Size = UDim2.new(1, 0, 0, 38)
ToggleBtn.Text = "  Status: ON"
ToggleBtn.TextColor3 = Color3.fromRGB(240, 240, 240)
ToggleBtn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
ToggleBtn.Font = Enum.Font.GothamSemibold
ToggleBtn.TextSize = 12
ToggleBtn.TextXAlignment = Enum.TextXAlignment.Left
applyCorner(ToggleBtn, 6)

local ToggleIndicator = Instance.new("Frame", ToggleBtn)
ToggleIndicator.Size = UDim2.new(0, 10, 0, 10)
ToggleIndicator.Position = UDim2.new(1, -20, 0.5, -5)
ToggleIndicator.BackgroundColor3 = Color3.fromRGB(80, 255, 120)
applyCorner(ToggleIndicator, 5)

local ModeBtn = Instance.new("TextButton", HomeContainer)
ModeBtn.Size = UDim2.new(1, 0, 0, 38)
ModeBtn.Text = "  Mode Switch: V1"
ModeBtn.TextColor3 = Color3.fromRGB(240, 240, 240)
ModeBtn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
ModeBtn.Font = Enum.Font.GothamSemibold
ModeBtn.TextSize = 12
ModeBtn.TextXAlignment = Enum.TextXAlignment.Left
applyCorner(ModeBtn, 6)

--// SETTINGS TAB COMPONENTS
local function CreateInput(name, configKey)
    local frame = Instance.new("Frame", SettingsContainer)
    frame.Size = UDim2.new(1, 0, 0, 32)
    frame.BackgroundTransparency = 1
    
    local label = Instance.new("TextLabel", frame)
    label.Text = name
    label.Size = UDim2.new(0.5, 0, 1, 0)
    label.TextColor3 = Color3.fromRGB(180, 180, 180)
    label.BackgroundTransparency = 1
    label.Font = Enum.Font.Gotham
    label.TextSize = 11
    label.TextXAlignment = Enum.TextXAlignment.Left
    
    local input = Instance.new("TextBox", frame)
    input.Size = UDim2.new(0.45, 0, 1, 0)
    input.Position = UDim2.new(0.55, 0, 0, 0)
    input.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
    input.Text = tostring(Config[configKey])
    input.TextColor3 = Color3.fromRGB(255, 255, 255)
    input.Font = Enum.Font.Gotham
    input.TextSize = 11
    applyCorner(input, 4)
    
    local stroke = Instance.new("UIStroke", input)
    stroke.Color = Color3.fromRGB(40, 40, 40)
    
    input.FocusLost:Connect(function() 
        local val = tonumber(input.Text) 
        if val then Config[configKey] = val 
        else Config[configKey] = input.Text end
    end)
    
    RunService.RenderStepped:Connect(function() 
        if not isCurrent() then return end 
        if not input:IsFocused() then 
            input.Text = tostring(Config[configKey]) 
        end 
    end)
    return frame
end

local DelayInput = CreateInput("Delay", "LethalDelay")
CreateInput("Jump Power", "LethalJump")
local AccInput = CreateInput("Accuracy / Flip", "LethalAccuracy")
CreateInput("Dash Range", "DashRange")
CreateInput("Cancel Delay", "LethalCancelDelay")
local KeyInput = CreateInput("Keybind", "Keybind")

local TouchBtn = Instance.new("TextButton", SettingsContainer)
TouchBtn.Size = UDim2.new(1, 0, 0, 32)
TouchBtn.Text = "Touch Mode: OFF"
TouchBtn.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
TouchBtn.TextColor3 = Color3.fromRGB(180, 180, 180)
TouchBtn.Font = Enum.Font.Gotham
TouchBtn.TextSize = 11
applyCorner(TouchBtn, 4)

local PlatformBtn = Instance.new("TextButton", SettingsContainer)
PlatformBtn.Size = UDim2.new(1, 0, 0, 32)
PlatformBtn.Text = "Platform: PC"
PlatformBtn.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
PlatformBtn.TextColor3 = Color3.fromRGB(180, 180, 180)
PlatformBtn.Font = Enum.Font.Gotham
PlatformBtn.TextSize = 11
PlatformBtn.Visible = false
applyCorner(PlatformBtn, 4)
KeyInput.Visible = false

local CooldownBtn = Instance.new("TextButton", SettingsContainer)
CooldownBtn.Size = UDim2.new(1, 0, 0, 32)
CooldownBtn.Text = "Cooldown System: ON"
CooldownBtn.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
CooldownBtn.TextColor3 = Color3.fromRGB(180, 180, 180)
CooldownBtn.Font = Enum.Font.Gotham
CooldownBtn.TextSize = 11
applyCorner(CooldownBtn, 4)

--// COOLDOWN UI BAR
CooldownBar = Instance.new("Frame", MainFrame)
CooldownBar.Name = "CooldownBar"
CooldownBar.Size = UDim2.new(1, 0, 0, 2)
CooldownBar.Position = UDim2.new(0, 0, 1, -2)
CooldownBar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CooldownBar.BackgroundTransparency = 0.5
CooldownBar.BorderSizePixel = 0
CooldownBar.Visible = false
CooldownBar.ZIndex = 10

CooldownFill = Instance.new("Frame", CooldownBar)
CooldownFill.Name = "Fill"
CooldownFill.Size = UDim2.new(1, 0, 1, 0)
CooldownFill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CooldownFill.BorderSizePixel = 0
CooldownFill.ZIndex = 11

--// MOBILE BUTTON TRIGGER
local MobileTrigger = Instance.new("TextButton", ScreenGui)
MobileTrigger.Size = UDim2.new(0, 56, 0, 56)
MobileTrigger.Position = UDim2.new(0.7, 0, 0.5, 0)
MobileTrigger.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MobileTrigger.Text = "SKID"
MobileTrigger.TextColor3 = Color3.fromRGB(255, 255, 255)
MobileTrigger.Font = Enum.Font.GothamBold
MobileTrigger.TextSize = 11
MobileTrigger.Visible = false
MobileTrigger.Draggable = true
MobileTrigger.Active = true
applyCorner(MobileTrigger, 28)

local TriggerStroke = Instance.new("UIStroke", MobileTrigger)
TriggerStroke.Color = Color3.fromRGB(60, 60, 60)

--// INTERACTIONS LOGIC
ToggleBtn.MouseButton1Click:Connect(function()
    Config.Enabled = not Config.Enabled
    ToggleBtn.Text = Config.Enabled and "  Status: ON" or "  Status: OFF"
    ToggleIndicator.BackgroundColor3 = Config.Enabled and Color3.fromRGB(80, 255, 120) or Color3.fromRGB(255, 80, 80)
end)

ModeBtn.MouseButton1Click:Connect(function()
    Config.LethalMode = (Config.LethalMode == "V1") and "V2" or "V1"
    ModeBtn.Text = "  Mode Switch: " .. Config.LethalMode
    if Config.LethalMode == "V2" then
        AccInput:FindFirstChildOfClass("TextLabel").Text = "Flip Delay"
        Config.LethalAccuracy = 0.25
    else
        AccInput:FindFirstChildOfClass("TextLabel").Text = "Accuracy / Flip"
        Config.LethalAccuracy = 15
    end
end)

TouchBtn.MouseButton1Click:Connect(function()
    Config.TouchMode = not Config.TouchMode
    TouchBtn.Text = "Touch Mode: " .. (Config.TouchMode and "ON" or "OFF")
    TouchBtn.TextColor3 = Config.TouchMode and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(180, 180, 180)
    PlatformBtn.Visible = Config.TouchMode
    DelayInput.Visible = not Config.TouchMode
    KeyInput.Visible = (Config.TouchMode and Config.Platform == "PC")
    MobileTrigger.Visible = (Config.TouchMode and Config.Platform == "Mobile")
end)

PlatformBtn.MouseButton1Click:Connect(function()
    Config.Platform = (Config.Platform == "PC") and "Mobile" or "PC"
    PlatformBtn.Text = "Platform: " .. Config.Platform
    KeyInput.Visible = (Config.Platform == "PC")
    MobileTrigger.Visible = (Config.Platform == "Mobile")
end)

CooldownBtn.MouseButton1Click:Connect(function()
    Config.CooldownActive = not Config.CooldownActive
    CooldownBtn.Text = "Cooldown System: " .. (Config.CooldownActive and "ON" or "OFF")
    CooldownBtn.TextColor3 = Config.CooldownActive and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(180, 180, 180)
end)

MobileTrigger.MouseButton1Click:Connect(executeLethal)

UIS.InputBegan:Connect(function(input, gpe)
    if not isCurrent() or gpe then return end
    if Config.TouchMode and Config.Platform == "PC" then
        if input.KeyCode == Enum.KeyCode[Config.Keybind:upper()] then
            executeLethal()
        end
    end
end)

--// CORE SETUP & NOCLIP
local function setup(char)
    if not isCurrent() then return end
    local hum = char:WaitForChild("Humanoid")
    hum.AnimationPlayed:Connect(function(track)
        if not isCurrent() then return end
        
        local animId = getId(track.Animation.AnimationId)
        if Config.CooldownActive and Config.CooldownAnims[animId] then
            startCooldown(5)
        end
        
        if Config.TouchMode or not Config.Enabled then return end
        
        if track.Animation.AnimationId == Config.LethalAnim then
            executeLethal()
        end
    end)
end

RunService.Stepped:Connect(function()
    if not isCurrent() or not Config.NoClipEnabled then return end
    
    if isNoclipping and player.Character then
        for _, model in pairs(workspace:GetChildren()) do
            if model:IsA("Model") and model ~= player.Character and (model:FindFirstChild("Humanoid") or model:FindFirstChildOfClass("Humanoid")) then
                for _, part in pairs(model:GetDescendants()) do
                    if part:IsA("BasePart") and part.CanCollide then
                        part.CanCollide = false
                    end
                end
            end
        end
    end
end)

if player.Character then setup(player.Character) end
player.CharacterAdded:Connect(setup)]])()
        end)
        if ok then
            loadedMacros.LoopDash = true
            v4({Title = 'Rif Hub', Description = 'Loop Dash Macro loaded successfully!'})
        else
            v4({Title = 'Rif Hub', Description = 'Failed to load Loop Dash: ' .. tostring(err)})
        end
    end,
})

externalSection:Button({
    Title = 'Load Lethal Macro',
    Callback = function()
        if loadedMacros.Lethal then
            v4({Title = 'Rif Hub', Description = 'Lethal is already loaded.'})
            return
        end
        local ok, err = pcall(function()
            loadstring([[local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local player = game.Players.LocalPlayer

local scriptActive = true
local Config = {
    Enabled = true,
    LethalEnabled = true,
    LethalAnim = "rbxassetid://12296113986",
    LethalDelay = 1.65,
    LethalJump = 60,
    LethalAccuracy = 12, 
    LethalCancelDelay = 0.4,
    LethalMode = "V1",
    CancelEnabled = true,
    NoClipEnabled = true,
    DashRange = 10
}

local isNoclipping = false
local advancedOpen = false

--// HÀM DASH GỐC (REMOTE)
local function fireDash()
    local char = player.Character
    if not char then return end
    local communicate = char:FindFirstChild("Communicate")
    if communicate then
        local args = {{Dash = Enum.KeyCode.W, Key = Enum.KeyCode.Q, Goal = "KeyPress"}}
        communicate:FireServer(unpack(args))
    end
end

--// HÀM BỔ TRỢ
local function clip()
    isNoclipping = false
    if player.Character then
        local hum = player.Character:FindFirstChild("Humanoid")
        if hum then hum.AutoRotate = true end
    end
end

--// FORCECANCEL: CHẾ ĐỘ INSTANT (BỎ LEGIT)
local function forceCancel()
    clip()
    local char = player.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    if hrp then
        -- Dọn sạch các lực đẩy cũ
        for _, obj in pairs(hrp:GetChildren()) do
            if obj:IsA("BodyVelocity") or obj:IsA("LinearVelocity") or obj:IsA("Attachment") or obj:IsA("BodyAngularVelocity") or obj:IsA("BodyGyro") then
                obj:Destroy()
            end
        end
        -- Dừng khựng ngay lập tức
        hrp.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
    end
end

local function getTorsoTarget()
    local char = player.Character
    if not char or not char:FindFirstChild("HumanoidRootPart") then return nil end
    local params = OverlapParams.new(); params.FilterType = Enum.RaycastFilterType.Exclude; params.FilterDescendantsInstances = {char}
    local parts = workspace:GetPartBoundsInRadius(char.HumanoidRootPart.Position, Config.DashRange, params)
    local target, dist = nil, Config.DashRange
    for _, part in pairs(parts) do
        local model = part:FindFirstAncestorOfClass("Model")
        if model and model:FindFirstChild("Humanoid") and model ~= char then
            local torso = model:FindFirstChild("Torso") or model:FindFirstChild("UpperTorso") or model:FindFirstChild("HumanoidRootPart")
            if torso then
                local d = (char.HumanoidRootPart.Position - torso.Position).Magnitude
                if d < dist then dist = d; target = torso end
            end
        end
    end
    return target
end

--// GUI SYSTEM (BỎ HIỆU ỨNG ĐỘNG)
local sg = Instance.new("ScreenGui", game.CoreGui); sg.Name = "Boommy_Lethal_V2_Fixed"
local main = Instance.new("Frame", sg)
main.Name = "Main"
main.Active = true
main.Draggable = true
main.Size = UDim2.new(0, 240, 0, 80)
main.Position = UDim2.new(0.5, -120, 0.2, 0)
main.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
main.BorderSizePixel = 0
main.ClipsDescendants = true
Instance.new("UICorner", main).CornerRadius = UDim.new(0, 10)
local bgGradient = Instance.new("UIGradient", main); bgGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(5,5,5)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(30,30,30)), ColorSequenceKeypoint.new(1, Color3.fromRGB(5,5,5))})
local stroke = Instance.new("UIStroke", main); stroke.Thickness = 2.5; local strokeGradient = Instance.new("UIGradient", stroke); strokeGradient.Color = ColorSequence.new(Color3.fromRGB(0, 120, 255))
local top = Instance.new("Frame", main); top.Size = UDim2.new(1, 0, 0, 80); top.BackgroundTransparency = 1
local title = Instance.new("TextLabel", top); title.Size = UDim2.new(0.65, 0, 0.4, 0); title.Position = UDim2.new(0.08, 0, 0.15, 0); title.Text = "BOOMMY LETHAL"; title.Font = Enum.Font.Michroma; title.TextSize = 15; title.TextColor3 = Color3.fromRGB(255, 255, 255); title.BackgroundTransparency = 1
local toggle = Instance.new("TextButton", top); toggle.Size = UDim2.new(0, 50, 0, 26); toggle.Position = UDim2.new(0.72, 0, 0.18, 0); toggle.BackgroundColor3 = Color3.fromRGB(0, 120, 255); toggle.Text = "ON"; toggle.TextColor3 = Color3.fromRGB(255,255,255); toggle.Font = Enum.Font.GothamBold; toggle.TextSize = 12; Instance.new("UICorner", toggle)
local advBtn = Instance.new("TextButton", top); advBtn.Size = UDim2.new(0, 100, 0, 20); advBtn.Position = UDim2.new(0.08, 0, 0.55, 0); advBtn.BackgroundTransparency = 1; advBtn.Text = "Advanced >"; advBtn.Font = Enum.Font.SourceSansBold; advBtn.TextSize = 14; advBtn.TextColor3 = Color3.fromRGB(0, 200, 255); advBtn.TextXAlignment = Enum.TextXAlignment.Left
local advFrame = Instance.new("Frame", main); advFrame.Size = UDim2.new(0.85, 0, 0, 210); advFrame.Position = UDim2.new(0.08, 0, 0, 80); advFrame.BackgroundTransparency = 1; local listLayout = Instance.new("UIListLayout", advFrame); listLayout.Padding = UDim.new(0, 8)
local AccuracyLabel, AccuracyInput

local function createSetting(name, configKey)
    local f = Instance.new("Frame", advFrame); f.Size = UDim2.new(1, 0, 0, 25); f.BackgroundTransparency = 1
    local l = Instance.new("TextLabel", f); l.Size = UDim2.new(0.5, 0, 1, 0); l.Text = name; l.TextColor3 = Color3.fromRGB(255,255,255); l.Font = Enum.Font.SourceSans; l.TextSize = 13; l.TextXAlignment = Enum.TextXAlignment.Left; l.BackgroundTransparency = 1
    local i = Instance.new("TextBox", f); i.Size = UDim2.new(0.4, 0, 1, 0); i.Position = UDim2.new(0.6, 0, 0, 0); i.BackgroundColor3 = Color3.fromRGB(30, 30, 30); i.Text = tostring(Config[configKey]); i.TextColor3 = Color3.fromRGB(0, 255, 255); i.TextSize = 12; Instance.new("UICorner", i)
    if configKey == "LethalAccuracy" then AccuracyLabel = l; AccuracyInput = i end
    i.FocusLost:Connect(function() local n = tonumber(i.Text) if n then Config[configKey] = n end end)
end
createSetting("Delay:", "LethalDelay"); createSetting("Velo:", "LethalJump"); createSetting("Accuracy:", "LethalAccuracy"); createSetting("Cancel:", "LethalCancelDelay")

local modeBtn = Instance.new("TextButton", advFrame); modeBtn.Size = UDim2.new(1, 0, 0, 28); modeBtn.BackgroundColor3 = Color3.fromRGB(40,40,40); modeBtn.Text = "Mode: V1"; modeBtn.TextColor3 = Color3.fromRGB(255,255,255); modeBtn.Font = Enum.Font.SourceSansBold; Instance.new("UICorner", modeBtn)
modeBtn.MouseButton1Click:Connect(function()
    Config.LethalMode = (Config.LethalMode == "V1") and "V2" or "V1"
    modeBtn.Text = "Mode: " .. Config.LethalMode
    if Config.LethalMode == "V2" then AccuracyLabel.Text = "Flip Delay:"; Config.LethalAccuracy = 0.25 else AccuracyLabel.Text = "Accuracy:"; Config.LethalAccuracy = 15 end
    AccuracyInput.Text = tostring(Config.LethalAccuracy)
end)

advBtn.MouseButton1Click:Connect(function()
    advancedOpen = not advancedOpen
    local targetSize = advancedOpen and UDim2.new(0, 240, 0, 275) or UDim2.new(0, 240, 0, 80)
    advBtn.Text = advancedOpen and "Advanced v" or "Advanced >"
    TweenService:Create(main, TweenInfo.new(0.3, Enum.EasingStyle.Sine), {Size = targetSize}):Play()
end)

--// CORE SETUP
local function setup(char)
    local hum = char:WaitForChild("Humanoid"); local root = char:WaitForChild("HumanoidRootPart")
    hum.AnimationPlayed:Connect(function(track)
        if not scriptActive or not Config.Enabled then return end
        if track.Animation.AnimationId == Config.LethalAnim and Config.LethalEnabled then
            local torso = getTorsoTarget()
            if not torso then clip() return end
            task.wait(Config.LethalDelay)
            if not scriptActive then return end
            root.AssemblyLinearVelocity = Vector3.new(root.AssemblyLinearVelocity.X, Config.LethalJump, root.AssemblyLinearVelocity.Z)
            --// Fix jump ko nảy: Thêm lực đẩy tức thời
            local bV = Instance.new("BodyVelocity")
            bV.Velocity = Vector3.new(0, Config.LethalJump, 0)
            bV.MaxForce = Vector3.new(0, 1e8, 0)
            bV.P = 1500
            bV.Parent = root
            game:GetService("Debris"):AddItem(bV, 0.1)
            isNoclipping = true; fireDash()
            
            -- DÙNG HEARTBEAT CHO XOAY (THAY TASKSPAWN)
            local startT = tick(); local flipped = false; local currentMode = Config.LethalMode 
            local forwardDir = (torso.Position - root.Position).Unit; local sideVec = Vector3.new(-forwardDir.Z, 0, forwardDir.X)
            local bav = (currentMode == "V1") and Instance.new("BodyAngularVelocity", root) or nil
            if bav then bav.MaxTorque = Vector3.new(0, 1000000, 0); bav.P = 15000 end
            
            local conn; conn = RunService.Heartbeat:Connect(function()
                if not scriptActive then if bav then bav:Destroy() end clip(); conn:Disconnect(); return end
                local elapsed = tick() - startT; hum.AutoRotate = false
                if currentMode == "V1" then
                    local angle = (elapsed / 0.45) * (math.pi / 1.5)
                    local radius = Config.LethalAccuracy * (1 - math.clamp(elapsed / 0.45, 0, 1))
                    local targetLookPos = torso.Position + (sideVec * math.cos(angle) + forwardDir * math.sin(angle)) * radius
                    local lookAtCF = CFrame.lookAt(root.Position, Vector3.new(targetLookPos.X, root.Position.Y, targetLookPos.Z))
                    local relativeCF = root.CFrame:Inverse() * lookAtCF; local _, y, _ = relativeCF:ToEulerAnglesXYZ()
                    if bav and bav.Parent then bav.AngularVelocity = Vector3.new(0, y * 30, 0) end
                elseif elapsed >= Config.LethalAccuracy and not flipped then
                    root.CFrame = root.CFrame * CFrame.Angles(0, math.pi, 0); flipped = true
                end
                local distXZ = (Vector2.new(root.Position.X, root.Position.Z) - Vector2.new(torso.Position.X, torso.Position.Z)).Magnitude
                if Config.CancelEnabled and elapsed > Config.LethalCancelDelay and distXZ < 2.2 then
                    if bav then bav:Destroy() end forceCancel(); conn:Disconnect(); return
                end
                if not Config.Enabled or elapsed > 1.5 or not torso.Parent then
                    if bav then bav:Destroy() end clip(); conn:Disconnect(); return
                end
            end)
        end
    end)
end

toggle.MouseButton1Click:Connect(function() Config.Enabled = not Config.Enabled; toggle.Text = Config.Enabled and "ON" or "OFF"; toggle.BackgroundColor3 = Config.Enabled and Color3.fromRGB(0, 120, 255) or Color3.fromRGB(200, 50, 50) end)
--// Đã dùng Draggable = true nên bỏ code drag tay

RunService.Stepped:Connect(function() if isNoclipping and player.Character and Config.NoClipEnabled then for _, p in pairs(player.Character:GetDescendants()) do if p:IsA("BasePart") then p.CanCollide = false end end end end)
if player.Character then setup(player.Character) end
player.CharacterAdded:Connect(setup)
]])()
        end)
        if ok then
            loadedMacros.Lethal = true
            v4({Title = 'Rif Hub', Description = 'Lethal Macro loaded successfully!'})
        else
            v4({Title = 'Rif Hub', Description = 'Failed to load Lethal: ' .. tostring(err)})
        end
    end,
})
v158:toggle({
    name = 'Enabled',
    def = v90.Autoblock.Enabled,
    pointer = 'Auto Block Toggle',
    callback = function(v397)
        v90.Autoblock.Enabled = v397
    end,
})
v158:toggle({
    name = 'Auto m1 Punish',
    def = v90.Autoblock.AutoM1,
    pointer = 'AutoM1',
    callback = function(v399)
        v90.Autoblock.AutoM1 = v399
    end,
})
v158:toggle({
    name = 'Auto Counter',
    def = v90.Autoblock.AutoCounter,
    pointer = 'Autocounter',
    callback = function(v401)
        v90.Autoblock.AutoCounter = v401
    end,
})
v158:toggle({
    name = 'Dash Prediction',
    def = v90.Autoblock.DashPredict,
    pointer = 'Dash Prediction Enabled',
    callback = function(v403)
        v90.Autoblock.DashPredict = v403
    end,
})
v159:toggle({
    name = 'Friend Check',
    def = v90.Misc.FriendCheck,
    pointer = 'Friend Check',
    callback = function(v405)
        v90.Misc.FriendCheck = v405
    end,
})
v159:toggle({
    name = 'No Dash Endlag',
    def = v90.Misc.NoDashEndLag,
    pointer = 'No Dash Endlag',
    callback = function(v407)
        v90.Misc.NoDashEndLag = v407
    end,
})
v162:toggle({
    name = 'Enabled',
    def = v90.Misc.TDSEnabled,
    pointer = 'TDS Enabled',
    callback = function(v409)
        v90.Misc.TDSEnabled = v409
    end,
})
v162:keybind({
    name = 'True Down Slam Jump',
    def = nil,
    pointer = 'TDS KeyBind',
    callback = function(v411)
        local v412 = 0
        local v413

        while true do
            if (v412 == (0)) then
                v413 = 0

                while true do
                    if (v413 == (0)) then
                        if v61:FindFirstChild('NoJump') then
                            task.defer(v61.NoJump.Destroy, v61.NoJump)
                        end

                        v62:ChangeState(Enum.HumanoidStateType.Jumping)

                        v413 = 1
                    end
                    if (v413 == (2)) then
                        v135()

                        break
                    end
                    if (v413 == (1)) then
                        task.wait(1E-2)

                        v63.Velocity = Vector3.new(v63.Velocity.X, 35, v63.Velocity.Z)
                        v413 = 2
                    end
                end

                break
            end
        end
    end,
})
v160:toggle({
    name = 'Enabled',
    def = v90.AutoTech.Enabled,
    pointer = 'Auto Tech Toggle',
    callback = function(v414)
        v90.AutoTech.Enabled = v414
    end,
})
v160:dropdown({
    name = 'Auto Tech Variant',
    def = v90.AutoTech.Tech,
    max = 5,
    options = {
        'Kiba',
        'Supa',
        'Lock On Dash',
        'Loop Dash',
        'Loop Dash v2',
    },
    pointer = 'Auto Tech Variant',
    callback = function(v416)
        v90.AutoTech.Tech = v416
    end,
})
v161:slider({
    name = 'Loop v2 Precision',
    def = 35,
    max = 100,
    min = 0,
    rounding = true,
    pointer = 'Precision',
    callback = function(v418)
        v90.AutoTech.Loopv2.Precision = v418 / (100)
    end,
})
v161:slider({
    name = 'Loop v2 First Flick Angle',
    def = 0,
    max = 360,
    min = 0,
    rounding = true,
    pointer = '1 Flick Delay',
    callback = function(v420)
        v90.AutoTech.Loopv2.FirstFlickAngle = v420
    end,
})
v161:slider({
    name = 'Loop v2 Second Flick Delay',
    def = 5,
    max = 10,
    min = 0,
    rounding = true,
    pointer = 'Flick Delay',
    callback = function(v422)
        v90.AutoTech.Loopv2.SecondFlick = v422 / 100
    end,
})
v161:toggle({
    name = 'Loop v2 Jump',
    def = v90.AutoTech.Loopv2.Jump,
    pointer = 'Loop Jump',
    callback = function(v424)
        v90.AutoTech.Loopv2.Jump = v424
    end,
})
v161:slider({
    name = 'Lockon Dash Precision',
    def = 100,
    max = 100,
    min = 0,
    rounding = true,
    pointer = 'fsdfsd',
    callback = function(v426)
        v90.AutoTech.LockonPrecision = v426 / (1E3)
    end,
})
v161:toggle({
    name = 'Supa Uses Heartbeat',
    def = false,
    pointer = 'fdgsdfgdsg',
    callback = function(v428)
        if v428 then
            v90.AutoTech.SupaMethod = 'Heartbeat'
        else
            v90.AutoTech.SupaMethod = 'RenderStepped'
        end
    end,
})
v161:toggle({
    name = 'Loop Dash Looks Up',
    def = false,
    pointer = 'lop up',
    callback = function(v429)
        v90.AutoTech.LoopDashLooksUp = v429
    end,
})
v166:toggle({
    name = 'Enabled',
    def = v90.Macro.TechHelper.Enabled,
    pointer = 'Tech Helper Toggle',
    callback = function(v431)
        v90.Macro.TechHelper.Enabled = v431
    end,
})
v166:dropdown({
    name = 'Tech Helper Variant',
    def = v90.Macro.TechHelper.Tech,
    max = 5,
    options = {
        'Humbled Twisted',
        'Loop Dash',
        'Instant Lee',
        'Oreo Tech',
        'Lix Tech',
    },
    pointer = 'Tech Helper Variant',
    callback = function(v433)
        v90.Macro.TechHelper.Tech = v433
    end,
})
v166:keybind({
    name = 'Tech Helper KeyBind',
    def = nil,
    pointer = 'Tech Helper KeyBind',
    callback = function(v435)
        local v436 = 0
        local v437

        while true do
            if ((0) == v436) then
                if (not v90.Macro.TechHelper.Enabled or (v90.Macro.TechHelper.Tech == '')) then
                    return
                end

                v437 = v116(0.36000000000001364)
                v436 = 1
            end
            if (v436 == (1)) then
                if (v90.Macro.TechHelper.Tech == 'Humbled Twisted') then
                    local v779 = 0
                    local v780

                    while true do
                        if ((0) == v779) then
                            v780 = 0

                            while true do
                                if (v780 == (4)) then
                                    v105(-90, 0.1)

                                    break
                                end
                                if (v780 == (2)) then
                                    v105(-90, 0.1)
                                    task.wait(0.1)

                                    v780 = 3
                                end
                                if (v780 == (3)) then
                                    v105(180, 0.1)
                                    task.wait(0.125)

                                    v780 = 4
                                end
                                if (v780 == (0)) then
                                    v135()
                                    task.wait(v437[1])

                                    v780 = 1
                                end
                                if (v780 == 1) then
                                    v97()
                                    task.wait((7.5000000000045475E-2) - v437[2])

                                    v780 = 2
                                end
                            end

                            break
                        end
                    end
                elseif (v90.Macro.TechHelper.Tech == 'Loop Dash') then
                    v136()
                    task.wait(v437[1])
                    v97()
                    v104(45)
                    v105(310, (0.3999999999999986) - v437[2])
                elseif (v90.Macro.TechHelper.Tech == 'Instant Lee') then
                    local v876 = 0
                    local v877

                    while true do
                        if (v876 == 0) then
                            v877 = 0

                            while true do
                                if (v877 == (1)) then
                                    v97()
                                    task.wait(v437[2])

                                    v877 = 2
                                end
                                if (v877 == 0) then
                                    v135()
                                    task.wait(v437[1] - (5E-2))

                                    v877 = 1
                                end
                                if (v877 == (3)) then
                                    v105(-175, 0.1)

                                    break
                                end
                                if (v877 == (2)) then
                                    v104(145)
                                    task.wait((7.5E-2) + v437[2])

                                    v877 = 3
                                end
                            end

                            break
                        end
                    end
                elseif (v90.Macro.TechHelper.Tech == 'Oreo Tech') then
                    v136()
                    task.wait(v437[1])
                    v104(180)
                    v97()
                    task.wait(0.18 + v437[2])
                    v104(180)
                elseif (v90.Macro.TechHelper.Tech == 'Lix Tech') then
                    local v919 = 0

                    while true do
                        if (v919 == (1)) then
                            v97()
                            task.wait((0.1599999999999966) + v437[2])

                            v919 = 2
                        end
                        if (v919 == (0)) then
                            v136()
                            task.wait(v437[1])

                            v919 = 1
                        end
                        if (v919 == 2) then
                            v104(180)

                            break
                        end
                    end
                end

                break
            end
        end
    end,
})
v166:toggle({
    name = 'Enabled',
    def = false,
    pointer = 'Extra Tech Toggle',
    callback = function(v438)
        v90.Macro.ExtraTechHelper.Enabled = v438
    end,
})
v166:keybind({
    name = 'Extra Tech Helper',
    def = nil,
    pointer = 'Tech Helper Helper',
    callback = function(v440)
        local v441 = 0
        local v442
        local v443
        local v444
        local v445

        while true do
            if (v441 == 3) then
                if (not v444 or not v445) then
                    return
                end
                if (v90.Macro.ExtraTechHelper.Tech == 'Instant Lethal Shift Lock') then
                    local v781 = v445:GetAttribute('Ping')
                    local v782 = v116(2.2000000000000455)

                    v96(Enum.KeyCode.Two)
                    task.wait(v782[1])
                    v94(v68)
                    v97()
                    task.wait(0.18 + v782[2])
                    v104(180)
                    v95(v68)
                elseif (v90.Macro.ExtraTechHelper.Tech == 'Instant Lethal Loop Dash') then
                    local v846 = v445:GetAttribute('Ping')
                    local v847 = v116(2.2)

                    v96(Enum.KeyCode.Two)
                    task.wait(v847[1])
                    v94(v68)
                    v97()
                    task.wait(0.05 - v847[2])
                    v104(45)
                    v105(275, 0.25)
                    v95(v68)
                elseif (v90.Macro.ExtraTechHelper.Tech == 'Materia Tech') then
                    local v878 = 0
                    local v879
                    local v880

                    while true do
                        if (v878 == (1)) then
                            task.wait(0.64)
                            v94(v72)
                            task.wait(5E-3)
                            v91(v880)

                            v878 = 2
                        end
                        if (v878 == 2) then
                            v104(90)
                            v96(v69)
                            v95(v72)
                            v135()

                            break
                        end
                        if (v878 == (0)) then
                            v879 = v444:FindFirstChild('HumanoidRootPart')

                            if not v879 then
                                return
                            end

                            v880 = v12.Heartbeat:Connect(function()
                                v104(nil, v879.Position)
                            end)

                            v96(Enum.KeyCode.Three)

                            v878 = 1
                        end
                    end
                end

                break
            end
            if (v441 == (1)) then
                if not v442 then
                    return
                end

                v443 = v442:match('^(.-);;')
                v441 = 2
            end
            if (v441 == (2)) then
                v444 = v25:FindFirstChild(v443)
                v445 = v15:FindFirstChild(v443)
                v441 = 3
            end
            if ((0) == v441) then
                if (v90.Macro.ExtraTechHelper.Tech == '') then
                    return
                end

                v442 = v61:GetAttribute('LastM1Hitted')
                v441 = 1
            end
        end
    end,
})
v166:dropdown({
    name = 'Extra Tech Variant',
    def = '',
    max = 3,
    options = {
        'Instant Lethal Shift Lock',
        'Instant Lethal Loop Dash',
        'Materia Tech',
    },
    pointer = 'Tech Helper Variant',
    callback = function(v446)
        v90.Macro.ExtraTechHelper.Tech = v446
    end,
})
v163:toggle({
    name = 'Enabled',
    def = false,
    pointer = 'True M1 Reset Toggle',
    callback = function(v448)
        v90.Macro.m1ResetEnabled = v448
    end,
})
v163:keybind({
    name = 'M1 Reset KeyBind',
    def = nil,
    pointer = 'M1 Reset Keybind',
    callback = function(v450)
        local v451 = 0
        local v452

        while true do
            if (v451 == (2)) then
                v95(v72)
                v104(90)
                v97()

                break
            end
            if (v451 == 1) then
                v104(-90)
                v94(v72)
                v96(v69)
                task.wait(v452)

                v451 = 2
            end
            if (0 == v451) then
                if not v90.Macro.m1ResetEnabled then
                    return
                end

                v452 = v116(0.28)[1]

                v135()
                task.wait(v452)

                v451 = 1
            end
        end
    end,
})
v164:toggle({
    name = 'Enabled',
    def = false,
    pointer = 'Emote Dash Toggle',
    callback = function(v453)
        v90.Macro.EmoteDash.Enabled = v453
    end,
})
v164:keybind({
    name = 'Emote Dash KeyBind',
    def = nil,
    pointer = 'Emote Dash KeyBind',
    callback = function(v455)
        local v456 = 0
        local v457

        while true do
            if (v456 == (2)) then
                v96(v69)
                task.wait(v90.Macro.EmoteDash.Delay)

                v457 = v63:FindFirstChild('dodgevelocity')
                v456 = 3
            end
            if ((4) == v456) then
                if (v90.Macro.EmoteDash.Type == 'Straight') then
                    v104(-90)
                end

                break
            end
            if (v456 == 3) then
                if v457 then
                    local v783 = 0
                    local v784

                    while true do
                        if (v783 == 0) then
                            v784 = 0

                            while true do
                                if (v784 == 0) then
                                    v457:Destroy()
                                    v99(v75)

                                    v784 = 1
                                end
                                if (v784 == (1)) then
                                    v99(v76)

                                    break
                                end
                            end

                            break
                        end
                    end
                end

                v95(v72)
                v95(v73)

                v456 = 4
            end
            if (v456 == 0) then
                v95(v70)
                v95(v71)

                if (v90.Macro.EmoteDash.Type == 'Straight') then
                    v104(90)
                end

                v456 = 1
            end
            if (v456 == 1) then
                if ((v90.Macro.EmoteDash.Type == 'Straight') or (v90.Macro.EmoteDash.Type == 'Right')) then
                    v94(v72)
                elseif (v90.Macro.EmoteDash.Type == 'Left') then
                    v94(v73)
                end

                v62:ChangeState(Enum.HumanoidStateType.Jumping)
                task.wait(0.005)

                v456 = 2
            end
        end
    end,
})
v164:textbox({
    name = 'Emote Dash Delay',
    def = v90.Macro.EmoteDash.Delay,
    placeholder = '',
    pointer = 'Emote Dash Delay',
    callback = function(v458)
        v90.Macro.EmoteDash.Delay = v458
    end,
})
v164:dropdown({
    name = 'Emote Dash Type',
    def = v90.Macro.EmoteDash.Type,
    max = 3,
    options = {
        'Right',
        'Left',
        'Straight',
    },
    pointer = 'Emote Dash Type',
    callback = function(v460)
        v90.Macro.EmoteDash.Type = v460
    end,
})
v165:keybind({
    name = 'Backdash Cancel 1',
    def = nil,
    pointer = 'Backdash Cancel 1 Keybind',
    callback = function(v462)
        local v463 = 0
        local v464

        while true do
            if ((0) == v463) then
                v464 = 0

                while true do
                    if ((0) == v464) then
                        if not v90.Macro.BackDashCancel1.Enabled then
                            return
                        end

                        v151(Enum.KeyCode.One)

                        break
                    end
                end

                break
            end
        end
    end,
})
v165:toggle({
    name = 'Enabled',
    def = false,
    pointer = 'Backdash Cancel 1 Enabled',
    callback = function(v465)
        v90.Macro.BackDashCancel1.Enabled = v465
    end,
})
v165:keybind({
    name = 'Backdash Cancel 2',
    def = nil,
    pointer = 'Backdash Cancel 2 Keybind',
    callback = function(v467)
        local v468 = 0

        while true do
            if (v468 == (0)) then
                if not v90.Macro.BackDashCancel2.Enabled then
                    return
                end

                v151(Enum.KeyCode.Two)

                break
            end
        end
    end,
})
v165:toggle({
    name = 'Enabled',
    def = false,
    pointer = 'Backdash Cancel 2 Enabled',
    callback = function(v469)
        v90.Macro.BackDashCancel2.Enabled = v469
    end,
})
v165:keybind({
    name = 'Backdash Cancel 3',
    def = nil,
    pointer = 'Backdash Cancel 3 Keybind',
    callback = function(v471)
        local v472 = 0

        while true do
            if (v472 == (0)) then
                if not v90.Macro.BackDashCancel3.Enabled then
                    return
                end

                v151(Enum.KeyCode.Three)

                break
            end
        end
    end,
})
v165:toggle({
    name = 'Enabled',
    def = false,
    pointer = 'Backdash Cancel 3 Enabled',
    callback = function(v473)
        v90.Macro.BackDashCancel3.Enabled = v473
    end,
})
v165:keybind({
    name = 'Backdash Cancel 4',
    def = nil,
    pointer = 'Backdash Cancel 4 Keybind',
    callback = function(v475)
        local v476 = 0

        while true do
            if (v476 == (0)) then
                if not v90.Macro.BackDashCancel4.Enabled then
                    return
                end

                v151(Enum.KeyCode.Four)

                break
            end
        end
    end,
})
v165:toggle({
    name = 'Enabled',
    def = false,
    pointer = 'Backdash Cancel 4 Enabled',
    callback = function(v477)
        v90.Macro.BackDashCancel4.Enabled = v477
    end,
})
v167:toggle({
    name = 'No Textures',
    def = false,
    pointer = 'No Textures',
    callback = function(v479)
        v122(false, v479)
    end,
})
v167:button({
    name = 'Update No Textures List',
    callback = function()
        v122(true)
    end,
})
v167:toggle({
    name = 'No Shadows',
    def = false,
    pointer = 'No Shadows',
    callback = function(v480)
        v13.GlobalShadows = not v480
    end,
})
v167:toggle({
    name = 'No Smoke',
    def = false,
    pointer = 'No Smoke',
    callback = function(v482)
        v150('Visuals.NoSmoke', 'No Smoke', v482)
    end,
})
v167:toggle({
    name = 'No Rings',
    def = false,
    pointer = 'No Rings',
    callback = function(v483)
        v150('Visuals.NoRings', 'No Rings', v483)
    end,
})
v167:toggle({
    name = 'No Capes',
    def = false,
    pointer = 'No Capes',
    callback = function(v484)
        v150('Visuals.NoCapes', 'No Capes', v484)
    end,
})
v167:toggle({
    name = 'No Auras',
    def = false,
    pointer = 'No Auras',
    callback = function(v485)
        v150('Visuals.NoAuras', 'No Auras', v485)
    end,
})
v167:toggle({
    name = 'No Garou After Images',
    def = false,
    pointer = 'No Garou After Images',
    callback = function(v486)
        v150('Visuals.NoGarouC', 'No Garou Clones', v486)
    end,
})
v167:toggle({
    name = 'No New Light',
    def = false,
    pointer = 'No New Light',
    callback = function(v487)
        v150('Visuals.NoNewLight', 'No New Light', v487)
    end,
})
v167:slider({
    name = 'Saturation',
    def = 0,
    max = 200,
    min = 0,
    rounding = true,
    pointer = 'Saturation',
    callback = function(v488)
        v34.Saturation = v488 / (100)
    end,
})
v167:slider({
    name = 'FOV',
    def = 70,
    max = 120,
    min = 1,
    rounding = true,
    pointer = 'FOV',
    callback = function(v490)
        local v491 = 0

        while true do
            if (0 == v491) then
                v90.Visuals.FOV = v490
                v29.FieldOfView = v490

                break
            end
        end
    end,
})
v170:toggle({
    name = 'Enabled',
    def = false,
    pointer = 'ESP Toggle',
    callback = function(v492)
        v150('Visuals.ESP.Enabled', 'ESP', v492)
    end,
})
v170:colorpicker({
    name = 'Friend Color',
    cpname = '',
    def = v90.Visuals.ESP.FriendColor,
    pointer = 'Friend Color',
    callback = function(v493)
        local v494 = 0

        while true do
            if (v494 == 0) then
                v90.Visuals.ESP.FriendColor = v493

                v121(false, false)

                break
            end
        end
    end,
})
v170:colorpicker({
    name = 'Enemy Color',
    cpname = '',
    def = v90.Visuals.ESP.EnemyColor,
    pointer = 'Enemy Color',
    callback = function(v495)
        local v496 = 0

        while true do
            if ((0) == v496) then
                v90.Visuals.ESP.EnemyColor = v495

                v121(false, false)

                break
            end
        end
    end,
})
v170:colorpicker({
    name = 'Neutral Color',
    cpname = '',
    def = v90.Visuals.ESP.NeutralColor,
    pointer = 'Neutral Color',
    callback = function(v497)
        local v498 = 0

        while true do
            if ((0) == v498) then
                v90.Visuals.ESP.NeutralColor = v497

                v121(false, false)

                break
            end
        end
    end,
})
v170:colorpicker({
    name = 'Ultimate Color',
    cpname = '',
    def = v90.Visuals.ESP.UltColor,
    pointer = 'Ultimate Color',
    callback = function(v499)
        local v500 = 0

        while true do
            if (v500 == 0) then
                v90.Visuals.ESP.UltColor = v499

                v121(false, false)

                break
            end
        end
    end,
})
v170:colorpicker({
    name = 'Saitama Ultimate Color',
    cpname = '',
    def = v90.Visuals.ESP.SaitamaUltColor,
    pointer = 'Saitama Ultimate Color',
    callback = function(v501)
        local v502 = 0

        while true do
            if (v502 == 0) then
                v90.Visuals.ESP.SaitamaUltColor = v501

                v121(false, false)

                break
            end
        end
    end,
})
v170:colorpicker({
    name = 'Death Counter Color',
    cpname = '',
    def = v90.Visuals.ESP.DeathCounterColor,
    pointer = 'Death Counter Color',
    callback = function(v503)
        local v504 = 0
        local v505

        while true do
            if (v504 == (0)) then
                v505 = 0

                while true do
                    if (0 == v505) then
                        v90.Visuals.ESP.DeathCounterColor = v503

                        v121(false, false)

                        break
                    end
                end

                break
            end
        end
    end,
})
v170:slider({
    name = 'Outline Transparency',
    def = 70,
    max = 100,
    min = 0,
    rounding = true,
    pointer = 'Outline Transparency',
    callback = function(v506)
        local v507 = 0

        while true do
            if (v507 == (0)) then
                v90.Visuals.ESP.OutlineTransparency = v506 / 100

                v121(false, false)

                break
            end
        end
    end,
})
v170:toggle({
    name = 'Death Counter ESP',
    def = false,
    pointer = 'Death Counter Without ESP',
    callback = function(v508)
        v90.Visuals.ESP.DeathCounterESP = v508
    end,
})
v170:toggle({
    name = 'Saitama Ult ESP',
    def = false,
    pointer = 'Saitama Ult Without ESP',
    callback = function(v510)
        v90.Visuals.ESP.SaitamaUltESP = v510
    end,
})
v170:toggle({
    name = 'No Billboards',
    def = false,
    pointer = 'No Billboards Toggle',
    callback = function(v512)
        v150('Visuals.ESP.NoBillboards', 'NoBillboards', v512)
    end,
})
v170:keybind({
    name = 'Add Friend/Enemy Keybind',
    def = nil,
    pointer = 'Add Friend Keybind',
    callback = function(v513)
        local v514 = 0
        local v515
        local v516
        local v517

        while true do
            if (v514 == (3)) then
                if (v47[v517.Name] == 'Friend') then
                    v47[v517.Name] = 'Neutral'
                elseif (v47[v517.Name] == 'Neutral') then
                    v47[v517.Name] = 'Enemy'
                elseif (v47[v517.Name] == 'Enemy') then
                    v47[v517.Name] = 'Friend'
                end

                v119(v517, v516)

                break
            end
            if (v514 == 0) then
                local v706 = 0

                while true do
                    if ((1) == v706) then
                        v514 = 1

                        break
                    end
                    if (0 == v706) then
                        v515 = v32.Target

                        if not v515 then
                            return
                        end

                        v706 = 1
                    end
                end
            end
            if (v514 == (2)) then
                v517 = v15:FindFirstChild(v516.Name)

                if not v517 then
                    return
                end

                v514 = 3
            end
            if (v514 == (1)) then
                v516 = v515:FindFirstAncestorOfClass('Model')

                if (not v516 or not v516:FindFirstChildOfClass('Humanoid')) then
                    return
                end

                v514 = 2
            end
        end
    end,
})
v168:toggle({
    name = 'Custom Ultbar Text',
    def = false,
    pointer = 'Custom Ultbar Text Toggle',
    callback = function(v518)
        v150('Visuals.CustomUltbar.UltbarText.Enabled', 'Custom Ultbar Text', v518)
    end,
})
v168:textbox({
    name = 'Ultbar Text',
    def = v90.Visuals.CustomUltbar.UltbarText.Text,
    placeholder = '',
    pointer = 'Custom Ultbar Text',
    callback = function(v519)
        local v520 = 0
        local v521

        while true do
            if (v520 == (0)) then
                v521 = 0

                while true do
                    if (v521 == (0)) then
                        v90.Visuals.CustomUltbar.UltbarText.Text = v519

                        v150(nil, 'Custom Ultbar Text', v90.Visuals.CustomUltbar.UltbarText.Enabled)

                        break
                    end
                end

                break
            end
        end
    end,
})
v168:toggle({
    name = 'Custom Ultbar Color',
    def = false,
    pointer = 'Custom Ultbar Color Toggle',
    callback = function(v522)
        v150('Visuals.CustomUltbar.UltbarColor.Enabled', 'Custom Ultbar Color', v522)
    end,
})
v168:colorpicker({
    name = 'Ultbar Color',
    cpname = '',
    def = v90.Visuals.CustomUltbar.UltbarColor.Color,
    pointer = 'Ultbar Color',
    callback = function(v523)
        v90.Visuals.CustomUltbar.UltbarColor.Color = v523

        v150(nil, 'Custom Ultbar Color', v90.Visuals.CustomUltbar.UltbarColor.Enabled)
    end,
})
v169:toggle({
    name = 'Enabled',
    def = false,
    pointer = 'Custom Effects Toggle',
    callback = function(v525)
        v150('Visuals.EffectsColor.Enabled', 'Custom Effects Color', v525)
    end,
})
v169:colorpicker({
    name = 'Effects Color',
    cpname = '',
    def = v90.Visuals.EffectsColor.Color,
    pointer = 'Custom Effects Color',
    callback = function(v526)
        local v527 = 0

        while true do
            if (v527 == (0)) then
                v90.Visuals.EffectsColor.Color = v526

                v150(nil, 'Custom Effects Color', v90.Visuals.EffectsColor.Enabled)

                break
            end
        end
    end,
})
v171:toggle({
    name = 'No Stun',
    def = false,
    pointer = 'No Stun',
    callback = function(v528)
        v90.Rage.NoStun = v528
    end,
})
v171:toggle({
    name = 'No Slow',
    def = false,
    pointer = 'No Slow',
    callback = function(v530)
        v90.Rage.NoSlow = v530
    end,
})
v171:toggle({
    name = 'No Fatigue',
    def = false,
    pointer = 'No Fatigue',
    callback = function(v532)
        v90.Rage.NoFatigue = v532
    end,
})
v171:toggle({
    name = 'No No Jump',
    def = false,
    pointer = 'No No Jump',
    callback = function(v534)
        v90.Rage.AlwaysJump = v534
    end,
})
v171:toggle({
    name = 'Auto Dodge',
    def = false,
    pointer = 'AutoDodge Toggle',
    callback = function(v536)
        v90.Rage.AutoDodge = v536
    end,
})
v172:textbox({
    name = 'Fling Target',
    def = '',
    placeholder = '',
    pointer = 'Fling Target',
    callback = function(v538)
        v90.Rage.Fling.Target = v538
    end,
})
v172:toggle({
    name = 'Loop Fling',
    def = false,
    pointer = 'AutoDodge Toggle',
    callback = function(v540)
        v90.Rage.Fling.LoopFling = v540
    end,
})
v172:button({
    name = 'Fling',
    callback = function()
        repeat
            local v608

            for v642, v643 in pairs(v15:GetPlayers())do
                if ((v643.Name == v90.Rage.Fling.Target) or (v643.DisplayName == v90.Rage.Fling.Target)) then
                    v608 = v643
                end
            end

            if v608 then
                local v708 = v608.Character

                if v708 then
                    v112(v708)
                end
            else
                v4({
                    Title = 'Rif Hub',
                    Description = "Fling target isn't on the server",
                })

                break
            end

            task.wait(3)
        until not v90.Rage.Fling.LoopFling
    end,
})
v172:toggle({
    name = 'Anti Fling',
    def = false,
    pointer = 'Anti Fling',
    callback = function(v542)
        if v542 then
            local v644 = nil

            v54 = v12.Heartbeat:Connect(function()
                if ((v63.AssemblyLinearVelocity.Magnitude > (250)) or (v63.AssemblyAngularVelocity.Magnitude > 250)) then
                    local v786 = 0

                    while true do
                        if (v786 == (1)) then
                            v63.CFrame = v644

                            break
                        end
                        if (v786 == 0) then
                            v63.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                            v63.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                            v786 = 1
                        end
                    end
                elseif ((v63.AssemblyLinearVelocity.Magnitude < (50)) or (v63.AssemblyAngularVelocity.Magnitude > (50))) then
                    v644 = v63.CFrame
                end
            end)
        else
            v91(v54)
        end
    end,
})
v173:toggle({
    name = 'Enabled',
    def = false,
    pointer = 'Custom Front Dash Enabled',
    callback = function(v543)
        v90.Rage.CustomFrontDash.Enabled = v543
    end,
})
v173:toggle({
    name = 'Only On Keybind',
    def = false,
    pointer = 'Custom front only on kebab',
    callback = function(v545)
        v90.Rage.CustomFrontDash.OnlyOnKeybind = v545
    end,
})
v173:slider({
    name = 'Front Dash Distance',
    def = 10,
    max = 100,
    min = 1,
    rounding = true,
    pointer = 'Front Dash Distance',
    callback = function(v547)
        v90.Rage.CustomFrontDash.Distance = v547 / (10)
    end,
})
v173:keybind({
    name = 'Keybind',
    def = nil,
    pointer = 'front keybind',
    callback = function(v549)
        if not v90.Rage.CustomFrontDash.Enabled then
            return
        end

        v97()
        v113(v90.Rage.CustomFrontDash.Distance, 0.14999999999997726)
    end,
})
v174:toggle({
    name = 'Enabled',
    def = false,
    pointer = 'Custom Side Dash Enabled',
    callback = function(v550)
        v90.Rage.CustomSideDash.Enabled = v550
    end,
})
v174:toggle({
    name = 'Only On Keybind',
    def = false,
    pointer = 'Side only on keybind',
    callback = function(v552)
        v90.Rage.CustomSideDash.OnlyOnKeybind = v552
    end,
})
v174:slider({
    name = 'Side Dash Distance',
    def = 10,
    max = 100,
    min = 1,
    rounding = true,
    pointer = 'Side Dash Distance',
    callback = function(v554)
        v90.Rage.CustomSideDash.Distance = v554 / 10
    end,
})
v174:dropdown({
    name = 'Dash Side',
    def = v90.Rage.CustomSideDash.Side,
    max = 3,
    options = {
        'Right',
        'Left',
        'Straight',
    },
    pointer = 'CustomSideDashType',
    callback = function(v556)
        v90.Rage.CustomSideDash.Side = v556
    end,
})
v174:keybind({
    name = 'Keybind',
    def = nil,
    pointer = 'Side keybind',
    callback = function(v558)
        local v559 = 0

        while true do
            if (v559 == 2) then
                task.wait(5E-3)
                v96(v69)

                if v90.Rage.CustomSideDash.RemoveInertia then
                    local v787 = 0
                    local v788

                    while true do
                        if (v787 == 1) then
                            if (v90.Rage.CustomSideDash.RemoveInertia and v788) then
                                v788:Destroy()
                                v99(v75)
                                v99(v76)
                            end

                            break
                        end
                        if (v787 == (0)) then
                            task.wait(v90.Rage.CustomSideDash.RMIDelay)

                            v788 = v63:FindFirstChild('dodgevelocity')
                            v787 = 1
                        end
                    end
                end

                v559 = 3
            end
            if ((4) == v559) then
                if (v90.Rage.CustomSideDash.Side == 'Straight') then
                    v104(-90)
                end

                v113(v90.Rage.CustomSideDash.Distance, 5E-2)

                break
            end
            if (v559 == 0) then
                local v709 = 0

                while true do
                    if (v709 == (0)) then
                        if not v90.Rage.CustomSideDash.Enabled then
                            return
                        end

                        v95(v70)

                        v709 = 1
                    end
                    if (v709 == (1)) then
                        v95(v71)

                        v559 = 1

                        break
                    end
                end
            end
            if ((3) == v559) then
                local v710 = 0

                while true do
                    if (v710 == (0)) then
                        v95(v68)
                        v95(v72)

                        v710 = 1
                    end
                    if (v710 == (1)) then
                        v95(v73)

                        v559 = 4

                        break
                    end
                end
            end
            if (v559 == (1)) then
                if (v90.Rage.CustomSideDash.Side == 'Straight') then
                    v104(90)
                end
                if ((v90.Rage.CustomSideDash.Side == 'Straight') or (v90.Rage.CustomSideDash.Side == 'Right')) then
                    v94(v72)
                elseif (v90.Rage.CustomSideDash.Side == 'Left') then
                    v94(v73)
                end
                if v90.Rage.CustomSideDash.Jump then
                    v94(v68)
                end

                v559 = 2
            end
        end
    end,
})
v174:toggle({
    name = 'Jump',
    def = false,
    pointer = 'SDJ',
    callback = function(v560)
        v90.Rage.CustomSideDash.Jump = v560
    end,
})
v174:toggle({
    name = 'Remove Inertia',
    def = false,
    pointer = 'Remove Ineria',
    callback = function(v562)
        v90.Rage.CustomSideDash.RemoveInertia = v562
    end,
})
v174:slider({
    name = 'RM Inertia Delay',
    def = 70,
    max = 100,
    min = 1,
    rounding = true,
    pointer = 'RMID',
    callback = function(v564)
        v90.Rage.CustomSideDash.RMIDelay = v564 / 1000
    end,
})
v175:toggle({
    name = 'Display Hitbox',
    def = false,
    pointer = 'Display Hitbox',
    callback = function(v566)
        if v566 then
            v56 = Instance.new('Part')
            v56.Size = Vector3.new(2, 2, 1)
            v56.Color = Color3.new(1, 0, 0)
            v56.Transparency = 0.5
            v56.Anchored = true
            v56.CanCollide = false
            v56.CanQuery = false
            v56.CanTouch = false
            v56.Name = 'PingGhost'
            v56.Parent = workspace
            v51 = v12.Heartbeat:Connect(function(v711)
                local v712 = 0
                local v713

                while true do
                    if (v712 == 0) then
                        v713 = tick()

                        v20(v67, {
                            time = v713,
                            cf = v63.CFrame,
                        })

                        v712 = 1
                    end
                    if (v712 == (1)) then
                        for v850 = #v67, 1, -1 do
                            if ((v713 - v67[v850].time) > 2) then
                                v22(v67, v850)
                            end
                        end

                        break
                    end
                end
            end)
            v52 = v12.RenderStepped:Connect(function()
                local v714 = 0
                local v715
                local v716

                while true do
                    if (v714 == (0)) then
                        v715 = tick() - v115(1000)
                        v716 = v107(v715)
                        v714 = 1
                    end
                    if (v714 == 1) then
                        if v716 then
                            v56.CFrame = v716
                        end

                        break
                    end
                end
            end)
        else
            local v654 = 0

            while true do
                if (v654 == (1)) then
                    v91(v52)

                    break
                end
                if (0 == v654) then
                    if v56 then
                        v56:Destroy()
                    end

                    v91(v51)

                    v654 = 1
                end
            end
        end
    end,
})
v175:button({
    name = 'Rejoin',
    callback = function()
        v9:TeleportToPlaceInstance(game.PlaceId, game.JobId, v30)
    end,
})
v175:toggle({
    name = 'Screen Strench Enabled',
    def = false,
    pointer = 'Stretch Screen Toggle',
    callback = function(v567)
        local v568 = 0

        while true do
            if (v568 == 0) then
                v90.Misc.StretchEnabled = v567

                if not v567 then
                    v91(v53)
                else
                    v53 = v12.RenderStepped:Connect(function()
                        v29.CFrame = v29.CFrame * CFrame.new(0, 0, 0, 1, 0, 0, 0, v90.Misc.StretchValue, 0, 0, 0, 1)
                    end)
                end

                break
            end
        end
    end,
})
v175:slider({
    name = 'Screen Stretch Value',
    def = 100,
    max = 120,
    min = 0,
    rounding = true,
    pointer = 'Stretch Screen Value',
    callback = function(v569)
        v90.Misc.StretchValue = v569 / (100)
    end,
})
v175:slider({
    name = 'Day Time',
    def = v13.ClockTime,
    max = 24,
    min = 0,
    rounding = true,
    pointer = 'CycleTime',
    callback = function(v571)
        v13.ClockTime = v571
    end,
})
v175:toggle({
    name = 'Lock On Enabled',
    def = false,
    pointer = 'Lock On Enabled',
    callback = function(v573)
        v90.Misc.LockOnEnabled = v573

        v91(v55)
    end,
})
v175:slider({
    name = 'Lock On Precision',
    def = 100,
    max = 100,
    min = 0,
    rounding = true,
    pointer = 'lockonprec',
    callback = function(v575)
        v90.Misc.LockOnPrecision = v575 / (100)
    end,
})
v175:keybind({
    name = 'Lock On Keybind',
    def = nil,
    pointer = 'Lock On Keybind',
    callback = function(v577)
        local v578 = 0

        while true do
            if ((0) == v578) then
                if not v90.Misc.LockOnEnabled then
                    return
                end
                if v55 then
                    local v789 = 0

                    while true do
                        if (v789 == (0)) then
                            v55:Disconnect()

                            v55 = nil

                            break
                        end
                    end
                else
                    local v790 = 0
                    local v791
                    local v792

                    while true do
                        if (v790 == (1)) then
                            for v882, v883 in pairs(v15:GetPlayers())do
                                local v884 = 0
                                local v885

                                while true do
                                    if (v884 == (0)) then
                                        v885 = v883.Character

                                        if ((v883 ~= v30) and v885) then
                                            local v923 = 0
                                            local v924
                                            local v925
                                            local v926

                                            while true do
                                                if (v923 == (1)) then
                                                    v926 = nil

                                                    while true do
                                                        if (v924 == 1) then
                                                            if (v925 and v926 and (v926.Health > (0))) then
                                                                local v937 = 0
                                                                local v938
                                                                local v939

                                                                while true do
                                                                    if (v937 == (0)) then
                                                                        v938, v939 = v29:WorldToViewportPoint(v925.Position)

                                                                        if v939 then
                                                                            local v940 = 0
                                                                            local v941
                                                                            local v942
                                                                            local v943

                                                                            while true do
                                                                                if (v940 == 0) then
                                                                                    v941 = Vector2.new(v32.X, v32.Y)
                                                                                    v942 = Vector2.new(v938.X, v938.Y)
                                                                                    v940 = 1
                                                                                end
                                                                                if (v940 == 1) then
                                                                                    v943 = (v941 - v942).Magnitude

                                                                                    if (v943 < (100)) then
                                                                                        local v945 = 0

                                                                                        while true do
                                                                                            if (v945 == 0) then
                                                                                                closestDistance = v943
                                                                                                v791 = v925
                                                                                                v945 = 1
                                                                                            end
                                                                                            if (v945 == 1) then
                                                                                                v792 = v926

                                                                                                break
                                                                                            end
                                                                                        end
                                                                                    end

                                                                                    break
                                                                                end
                                                                            end
                                                                        end

                                                                        break
                                                                    end
                                                                end
                                                            end

                                                            break
                                                        end
                                                        if ((0) == v924) then
                                                            v925 = v885:FindFirstChild('HumanoidRootPart')
                                                            v926 = v885:FindFirstChild('Humanoid')
                                                            v924 = 1
                                                        end
                                                    end

                                                    break
                                                end
                                                if (v923 == (0)) then
                                                    v924 = 0
                                                    v925 = nil
                                                    v923 = 1
                                                end
                                            end
                                        end

                                        break
                                    end
                                end
                            end

                            if (not v791 or not v792) then
                                return
                            end

                            v790 = 2
                        end
                        if (v790 == (0)) then
                            v791 = nil
                            v792 = nil
                            v790 = 1
                        end
                        if ((2) == v790) then
                            v55 = v12.Heartbeat:Connect(function()
                                local v886 = 0
                                local v887

                                while true do
                                    if (v886 == (0)) then
                                        v887 = 0

                                        while true do
                                            if (v887 == (0)) then
                                                if (not v791.Parent or (v792.Health <= (0))) then
                                                    local v933 = 0

                                                    while true do
                                                        if (v933 == 1) then
                                                            return
                                                        end
                                                        if (v933 == 0) then
                                                            v55:Disconnect()

                                                            v55 = nil
                                                            v933 = 1
                                                        end
                                                    end
                                                end

                                                v104(nil, v791.Position, false, v90.Misc.LockOnPrecision)

                                                break
                                            end
                                        end

                                        break
                                    end
                                end
                            end)

                            break
                        end
                    end
                end

                break
            end
        end
    end,
})
-- WindUI opens the first tab automatically.

for v579, v580 in pairs(v15:GetPlayers())do
    v148(v580)
end

v15.PlayerAdded:Connect(v148)
v15.PlayerRemoving:Connect(function(v581)
    local v582 = 0

    while true do
        if (v582 == (1)) then
            v45[v581] = {}
            v44[v581] = {}

            break
        end
        if (v582 == 0) then
            v92(v45[v581])
            v92(v44[v581])

            v582 = 1
        end
    end
end)
v122(true)

if v30.Character then
    v130(v30.Character)
end

v30.CharacterAdded:Connect(v130)
v26.DescendantAdded:Connect(v143)
v27.DescendantAdded:Connect(v143)
v8.InputBegan:Connect(function(v583, v584)
    local v585 = 0

    while true do
        if (v585 == 0) then
            if v584 then
                return
            end
            if ((v583.KeyCode == v69) and not v8:IsKeyDown(v72) and not v8:IsKeyDown(v73) and v90.Misc.NoDashEndLag and not v8:IsKeyDown(v71) and v61:FindFirstChild('UsedDash')) then
                v97()
            end

            break
        end
    end
end)
v12.Heartbeat:Connect(function()
    if v66 then
        v62.AutoRotate = false
    end
end)
v4({
    Title = 'Rif Hub',
    Description = 'Rif Hub loaded successfully!',
})
