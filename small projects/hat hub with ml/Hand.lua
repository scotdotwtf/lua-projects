local unanchoredparts = {}
local movers = {}
local tog = true
local move = false
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character
local mov = {};
local mov2 = {};

local Hats = {palm   = Character:WaitForChild("Nagamaki"),
             point1   = Character:WaitForChild("Robloxclassicred"),
             point2   = Character:WaitForChild("Pal Hair"),
             middle1   = Character:WaitForChild("Pink Hair"),
             middle2   = Character:WaitForChild("Hat1"),
             ring1   = Character:WaitForChild("Kate Hair"),
             ring2   = Character:WaitForChild("LavanderHair"),
             pinki1   = Character:WaitForChild("Bedhead"),
             pinki2   = Character:WaitForChild("BlockheadBaseballCap"),
             thumb   = Character:WaitForChild("MessyHair"),
}

for i,v in next, Hats do
v.Handle.AccessoryWeld:Remove()
for _,mesh in next, v:GetDescendants() do
if mesh:IsA("Mesh") or mesh:IsA("SpecialMesh") then
mesh:Remove()
end
end
end

function ftp(str)
    local pt = {};
    if str ~= 'me' and str ~= 'random' then
        for i, v in pairs(game.Players:GetPlayers()) do
            if v.Name:lower():find(str:lower()) then
                table.insert(pt, v);
            end
        end
    elseif str == 'me' then
        table.insert(pt, plr);
	elseif str == 'random' then
		table.insert(pt, game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]);
    end
    return pt;
end

local function align(i,v)
local att0 = Instance.new("Attachment", i)
att0.Position = Vector3.new(0,0,0)
local att1 = Instance.new("Attachment", v)
att1.Position = Vector3.new(0,0,0)
local AP = Instance.new("AlignPosition", i)
AP.Attachment0 = att0
AP.Attachment1 = att1
AP.RigidityEnabled = false
AP.ReactionForceEnabled = false
AP.ApplyAtCenterOfMass = true
AP.MaxForce = 9999999
AP.MaxVelocity = math.huge
AP.Responsiveness = 65
local AO = Instance.new("AlignOrientation", i)
AO.Attachment0 = att0
AO.Attachment1 = att1
AO.ReactionTorqueEnabled = false
AO.PrimaryAxisOnly = false
AO.MaxTorque = 9999999
AO.MaxAngularVelocity = math.huge
AO.Responsiveness = 50
end

align(Hats.palm.Handle, Character["HumanoidRootPart"])
align(Hats.point1.Handle, Character["HumanoidRootPart"])
align(Hats.point2.Handle, Character["HumanoidRootPart"])
align(Hats.middle1.Handle, Character["HumanoidRootPart"])
align(Hats.middle2.Handle, Character["HumanoidRootPart"])
align(Hats.ring1.Handle, Character["HumanoidRootPart"])
align(Hats.ring2.Handle, Character["HumanoidRootPart"])
align(Hats.pinki1.Handle, Character["HumanoidRootPart"])
align(Hats.pinki2.Handle, Character["HumanoidRootPart"])
align(Hats.thumb.Handle, Character["HumanoidRootPart"])

Hats.palm.Handle.Attachment.Rotation = Vector3.new(50,0,0)
Hats.point1.Handle.Attachment.Rotation = Vector3.new(-20,0,0)
Hats.point2.Handle.Attachment.Rotation = Vector3.new(5,0,0)
Hats.middle1.Handle.Attachment.Rotation = Vector3.new(-20,0,0)
Hats.middle2.Handle.Attachment.Rotation = Vector3.new(5,0,0)
Hats.ring1.Handle.Attachment.Rotation = Vector3.new(-20,0,0)
Hats.ring2.Handle.Attachment.Rotation = Vector3.new(5,0,0)
Hats.pinki1.Handle.Attachment.Rotation = Vector3.new(-20,0,0)
Hats.pinki2.Handle.Attachment.Rotation = Vector3.new(5,0,0)
Hats.thumb.Handle.Attachment.Rotation = Vector3.new(0,30,0)

Character:WaitForChild("HumanoidRootPart"):FindFirstChild("Attachment").Name = "Attachment1"
Character:WaitForChild("HumanoidRootPart"):FindFirstChild("Attachment").Name = "Attachment2"
Character:WaitForChild("HumanoidRootPart"):FindFirstChild("Attachment").Name = "Attachment3"
Character:WaitForChild("HumanoidRootPart"):FindFirstChild("Attachment").Name = "Attachment4"
Character:WaitForChild("HumanoidRootPart"):FindFirstChild("Attachment").Name = "Attachment5"
Character:WaitForChild("HumanoidRootPart"):FindFirstChild("Attachment").Name = "Attachment6"
Character:WaitForChild("HumanoidRootPart"):FindFirstChild("Attachment").Name = "Attachment7"
Character:WaitForChild("HumanoidRootPart"):FindFirstChild("Attachment").Name = "Attachment8"
Character:WaitForChild("HumanoidRootPart"):FindFirstChild("Attachment").Name = "Attachment9"
Character:WaitForChild("HumanoidRootPart"):FindFirstChild("Attachment").Name = "Attachment10"

Character:WaitForChild("HumanoidRootPart").Attachment1.Position = Vector3.new(0,5,5)
Character:WaitForChild("HumanoidRootPart").Attachment2.Position = Vector3.new(-2,6.2,3.12)
Character:WaitForChild("HumanoidRootPart").Attachment3.Position = Vector3.new(-2,6.4,1.4)
Character:WaitForChild("HumanoidRootPart").Attachment4.Position = Vector3.new(-0.6,6.2,3.12)
Character:WaitForChild("HumanoidRootPart").Attachment5.Position = Vector3.new(-0.6,6.4,1.4)
Character:WaitForChild("HumanoidRootPart").Attachment6.Position = Vector3.new(0.7,6.2,3.12)
Character:WaitForChild("HumanoidRootPart").Attachment7.Position = Vector3.new(0.7,6.4,1.4)
Character:WaitForChild("HumanoidRootPart").Attachment8.Position = Vector3.new(2,6.2,3.12)
Character:WaitForChild("HumanoidRootPart").Attachment9.Position = Vector3.new(2,6.4,1.4)
Character:WaitForChild("HumanoidRootPart").Attachment10.Position = Vector3.new(3,4.5,4.7)


game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "z" then
     if toggle == false then

                Character:WaitForChild("HumanoidRootPart").Attachment1.Position = Vector3.new(-5,3,0)
                Character:WaitForChild("HumanoidRootPart").Attachment2.Position = Vector3.new(-7,4,1)
                Character:WaitForChild("HumanoidRootPart").Attachment3.Position = Vector3.new(-7,3.5,2)
                Character:WaitForChild("HumanoidRootPart").Attachment4.Position = Vector3.new(-5.7,4,1)
                Character:WaitForChild("HumanoidRootPart").Attachment5.Position = Vector3.new(-5.7,3.5,2)
                Character:WaitForChild("HumanoidRootPart").Attachment6.Position = Vector3.new(-4.4,5.5,0)
                Character:WaitForChild("HumanoidRootPart").Attachment7.Position = Vector3.new(-4.4,6.8,0)
                Character:WaitForChild("HumanoidRootPart").Attachment8.Position = Vector3.new(-3,4,1)
                Character:WaitForChild("HumanoidRootPart").Attachment9.Position = Vector3.new(-3,3.5,2)
            Character:WaitForChild("HumanoidRootPart").Attachment10.Position = Vector3.new(-2.1,2.6,0)

		    Hats.palm.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.point1.Handle.Attachment.Rotation = Vector3.new(-180,0,0)
                Hats.point2.Handle.Attachment.Rotation = Vector3.new(-270,0,0)
                Hats.middle1.Handle.Attachment.Rotation = Vector3.new(-180,0,0)
                Hats.middle2.Handle.Attachment.Rotation = Vector3.new(-270,0,0)
                Hats.ring1.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.ring2.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.pinki1.Handle.Attachment.Rotation = Vector3.new(-180,0,0)
                Hats.pinki2.Handle.Attachment.Rotation = Vector3.new(-270,0,0)
            Hats.thumb.Handle.Attachment.Rotation = Vector3.new(0,90,-40)

           toggle = true
 else
                Character:WaitForChild("HumanoidRootPart").Attachment1.Position = Vector3.new(-5,3,0)
                Character:WaitForChild("HumanoidRootPart").Attachment2.Position = Vector3.new(-7,4,1)
                Character:WaitForChild("HumanoidRootPart").Attachment3.Position = Vector3.new(-7,3.5,2)
                Character:WaitForChild("HumanoidRootPart").Attachment4.Position = Vector3.new(-5.7,4,1)
                Character:WaitForChild("HumanoidRootPart").Attachment5.Position = Vector3.new(-5.7,3.5,2)
                Character:WaitForChild("HumanoidRootPart").Attachment6.Position = Vector3.new(-4.4,5.2,0)
                Character:WaitForChild("HumanoidRootPart").Attachment7.Position = Vector3.new(-5.06,7,0)
                Character:WaitForChild("HumanoidRootPart").Attachment8.Position = Vector3.new(-2.9,5.3,0)
                Character:WaitForChild("HumanoidRootPart").Attachment9.Position = Vector3.new(-2.6,7,0)
            Character:WaitForChild("HumanoidRootPart").Attachment10.Position = Vector3.new(-3.23,2,1)
            
		    Hats.palm.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.point1.Handle.Attachment.Rotation = Vector3.new(-180,0,0)
                Hats.point2.Handle.Attachment.Rotation = Vector3.new(-270,0,0)
                Hats.middle1.Handle.Attachment.Rotation = Vector3.new(-180,0,0)
                Hats.middle2.Handle.Attachment.Rotation = Vector3.new(-270,0,0)
                Hats.ring1.Handle.Attachment.Rotation = Vector3.new(90,0,-20)
                Hats.ring2.Handle.Attachment.Rotation = Vector3.new(90,0,-20)
                Hats.pinki1.Handle.Attachment.Rotation = Vector3.new(90,0,10)
                Hats.pinki2.Handle.Attachment.Rotation = Vector3.new(90,0,10)
            Hats.thumb.Handle.Attachment.Rotation = Vector3.new(0,200,0)

            toggle = false
        end
    end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "q" then
     if toggle == false then
         
                Character:WaitForChild("HumanoidRootPart").Attachment1.Position = Vector3.new(0,5,5)
                Character:WaitForChild("HumanoidRootPart").Attachment2.Position = Vector3.new(-2,6.2,3.12)
                Character:WaitForChild("HumanoidRootPart").Attachment3.Position = Vector3.new(-2,6.4,1.4)
                Character:WaitForChild("HumanoidRootPart").Attachment4.Position = Vector3.new(-0.6,6.2,3.12)
                Character:WaitForChild("HumanoidRootPart").Attachment5.Position = Vector3.new(-0.6,6.4,1.4)
                Character:WaitForChild("HumanoidRootPart").Attachment6.Position = Vector3.new(0.7,6.2,3.12)
                Character:WaitForChild("HumanoidRootPart").Attachment7.Position = Vector3.new(0.7,6.4,1.4)
                Character:WaitForChild("HumanoidRootPart").Attachment8.Position = Vector3.new(2,6.2,3.12)
                Character:WaitForChild("HumanoidRootPart").Attachment9.Position = Vector3.new(2,6.4,1.4)
            Character:WaitForChild("HumanoidRootPart").Attachment10.Position = Vector3.new(3,4.5,4.7)

		    Hats.palm.Handle.Attachment.Rotation = Vector3.new(50,0,0)
                Hats.point1.Handle.Attachment.Rotation = Vector3.new(-20,0,0)
                Hats.point2.Handle.Attachment.Rotation = Vector3.new(5,0,0)
                Hats.middle1.Handle.Attachment.Rotation = Vector3.new(-20,0,0)
                Hats.middle2.Handle.Attachment.Rotation = Vector3.new(5,0,0)
                Hats.ring1.Handle.Attachment.Rotation = Vector3.new(-20,0,0)
                Hats.ring2.Handle.Attachment.Rotation = Vector3.new(5,0,0)
                Hats.pinki1.Handle.Attachment.Rotation = Vector3.new(-20,0,0)
                Hats.pinki2.Handle.Attachment.Rotation = Vector3.new(5,0,0)
            Hats.thumb.Handle.Attachment.Rotation = Vector3.new(0,30,0)

           toggle = true
 else
                Character:WaitForChild("HumanoidRootPart").Attachment1.Position = Vector3.new(0,3.6,0)
                Character:WaitForChild("HumanoidRootPart").Attachment2.Position = Vector3.new(-2,4.6,-1)
                Character:WaitForChild("HumanoidRootPart").Attachment3.Position = Vector3.new(-2,4.1,-2)
                Character:WaitForChild("HumanoidRootPart").Attachment4.Position = Vector3.new(-0.7,4.6,-1)
                Character:WaitForChild("HumanoidRootPart").Attachment5.Position = Vector3.new(-0.7,4.1,-2)
                Character:WaitForChild("HumanoidRootPart").Attachment6.Position = Vector3.new(0.6,4.6,-1)
                Character:WaitForChild("HumanoidRootPart").Attachment7.Position = Vector3.new(0.6,4.1,-2)
                Character:WaitForChild("HumanoidRootPart").Attachment8.Position = Vector3.new(2,6,0)
                Character:WaitForChild("HumanoidRootPart").Attachment9.Position = Vector3.new(2,6.4,0)
            Character:WaitForChild("HumanoidRootPart").Attachment10.Position = Vector3.new(3.3,2.6,0)
            
		    Hats.palm.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.point1.Handle.Attachment.Rotation = Vector3.new(-180,0,0)
                Hats.point2.Handle.Attachment.Rotation = Vector3.new(-270,0,0)
                Hats.middle1.Handle.Attachment.Rotation = Vector3.new(-180,0,0)
                Hats.middle2.Handle.Attachment.Rotation = Vector3.new(-270,0,0)
                Hats.ring1.Handle.Attachment.Rotation = Vector3.new(-180,0,0)
                Hats.ring2.Handle.Attachment.Rotation = Vector3.new(-270,0,0)
                Hats.pinki1.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.pinki2.Handle.Attachment.Rotation = Vector3.new(90,0,0)
            Hats.thumb.Handle.Attachment.Rotation = Vector3.new(0,90,0)

            toggle = false
        end
    end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "x" then
     if toggle == false then
         
                Character:WaitForChild("HumanoidRootPart").Attachment1.Position = Vector3.new(0,4,0)
                Character:WaitForChild("HumanoidRootPart").Attachment2.Position = Vector3.new(2,4,-1)
                Character:WaitForChild("HumanoidRootPart").Attachment3.Position = Vector3.new(1,4,-1)
                Character:WaitForChild("HumanoidRootPart").Attachment4.Position = Vector3.new(-2,7.5,-0.38)
                Character:WaitForChild("HumanoidRootPart").Attachment5.Position = Vector3.new(-2,6.3,-0.15)
                Character:WaitForChild("HumanoidRootPart").Attachment6.Position = Vector3.new(0,7.5,-1.03)
                Character:WaitForChild("HumanoidRootPart").Attachment7.Position = Vector3.new(0,6.1,-0.38)
                Character:WaitForChild("HumanoidRootPart").Attachment8.Position = Vector3.new(2,4.5,-2)
                Character:WaitForChild("HumanoidRootPart").Attachment9.Position = Vector3.new(2,5,-1)
            Character:WaitForChild("HumanoidRootPart").Attachment10.Position = Vector3.new(2,3,-1)

		    Hats.palm.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.point1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.point2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.middle1.Handle.Attachment.Rotation = Vector3.new(-80,0,0)
                Hats.middle2.Handle.Attachment.Rotation = Vector3.new(-80,0,0)
                Hats.ring1.Handle.Attachment.Rotation = Vector3.new(-65,0,0)
                Hats.ring2.Handle.Attachment.Rotation = Vector3.new(-65,0,0)
                Hats.pinki1.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.pinki2.Handle.Attachment.Rotation = Vector3.new(0,0,0)
            Hats.thumb.Handle.Attachment.Rotation = Vector3.new(0,0,0)

           toggle = true
 else
                Character:WaitForChild("HumanoidRootPart").Attachment1.Position = Vector3.new(0,4,0)
                Character:WaitForChild("HumanoidRootPart").Attachment2.Position = Vector3.new(6,4,-1)
                Character:WaitForChild("HumanoidRootPart").Attachment3.Position = Vector3.new(5,4,-1)
                Character:WaitForChild("HumanoidRootPart").Attachment4.Position = Vector3.new(-2,7.5,-0.38)
                Character:WaitForChild("HumanoidRootPart").Attachment5.Position = Vector3.new(-2,6.3,-0.15)
                Character:WaitForChild("HumanoidRootPart").Attachment6.Position = Vector3.new(0,7.5,-1.03)
                Character:WaitForChild("HumanoidRootPart").Attachment7.Position = Vector3.new(0,6.1,-0.38)
                Character:WaitForChild("HumanoidRootPart").Attachment8.Position = Vector3.new(2,4.5,-2)
                Character:WaitForChild("HumanoidRootPart").Attachment9.Position = Vector3.new(2,5,-1)
            Character:WaitForChild("HumanoidRootPart").Attachment10.Position = Vector3.new(2,3,-1)
            
		    Hats.palm.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.point1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.point2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.middle1.Handle.Attachment.Rotation = Vector3.new(-80,0,0)
                Hats.middle2.Handle.Attachment.Rotation = Vector3.new(-80,0,0)
                Hats.ring1.Handle.Attachment.Rotation = Vector3.new(-65,0,0)
                Hats.ring2.Handle.Attachment.Rotation = Vector3.new(-65,0,0)
                Hats.pinki1.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.pinki2.Handle.Attachment.Rotation = Vector3.new(0,0,0)
            Hats.thumb.Handle.Attachment.Rotation = Vector3.new(0,0,0)

            toggle = false
        end
    end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "e" then
     if toggle == false then
 
                Character:WaitForChild("HumanoidRootPart").Attachment1.Position = Vector3.new(0,-20,0)
                Character:WaitForChild("HumanoidRootPart").Attachment2.Position = Vector3.new(-3.5,7,0)
                Character:WaitForChild("HumanoidRootPart").Attachment3.Position = Vector3.new(-3,5,0)
                Character:WaitForChild("HumanoidRootPart").Attachment4.Position = Vector3.new(-3,6,0)
                Character:WaitForChild("HumanoidRootPart").Attachment5.Position = Vector3.new(-1,6,0)
                Character:WaitForChild("HumanoidRootPart").Attachment6.Position = Vector3.new(3.5,7,0)
                Character:WaitForChild("HumanoidRootPart").Attachment7.Position = Vector3.new(3,5,0)
                Character:WaitForChild("HumanoidRootPart").Attachment8.Position = Vector3.new(3,6,0)
                Character:WaitForChild("HumanoidRootPart").Attachment9.Position = Vector3.new(1,6,0)
            Character:WaitForChild("HumanoidRootPart").Attachment10.Position = Vector3.new(0,-20,0)

		    Hats.palm.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.point1.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.point2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.middle1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.middle2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.ring1.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.ring2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.pinki1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.pinki2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
            Hats.thumb.Handle.Attachment.Rotation = Vector3.new(0,0,0)

           toggle = true
 else
                Character:WaitForChild("HumanoidRootPart").Attachment1.Position = Vector3.new(0,-20,0)
                Character:WaitForChild("HumanoidRootPart").Attachment2.Position = Vector3.new(-5.5,7,0)
                Character:WaitForChild("HumanoidRootPart").Attachment3.Position = Vector3.new(-5,5,0)
                Character:WaitForChild("HumanoidRootPart").Attachment4.Position = Vector3.new(-5,6,0)
                Character:WaitForChild("HumanoidRootPart").Attachment5.Position = Vector3.new(-3,6,0)
                Character:WaitForChild("HumanoidRootPart").Attachment6.Position = Vector3.new(5.5,7,0)
                Character:WaitForChild("HumanoidRootPart").Attachment7.Position = Vector3.new(5,5,0)
                Character:WaitForChild("HumanoidRootPart").Attachment8.Position = Vector3.new(5,6,0)
                Character:WaitForChild("HumanoidRootPart").Attachment9.Position = Vector3.new(3,6,0)
            Character:WaitForChild("HumanoidRootPart").Attachment10.Position = Vector3.new(0,-20,0)
            
		    Hats.palm.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.point1.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.point2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.middle1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.middle2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.ring1.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.ring2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.pinki1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.pinki2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
            Hats.thumb.Handle.Attachment.Rotation = Vector3.new(0,0,0)

            toggle = false
        end
    end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "c" then
     if toggle == false then
         
                Character:WaitForChild("HumanoidRootPart").Attachment1.Position = Vector3.new(0,5,3)
                Character:WaitForChild("HumanoidRootPart").Attachment2.Position = Vector3.new(-1.05,8,3)
                Character:WaitForChild("HumanoidRootPart").Attachment3.Position = Vector3.new(-0.64,9.1,3)
                Character:WaitForChild("HumanoidRootPart").Attachment4.Position = Vector3.new(0.1,7,3)
                Character:WaitForChild("HumanoidRootPart").Attachment5.Position = Vector3.new(0.77,8.6,3)
                Character:WaitForChild("HumanoidRootPart").Attachment6.Position = Vector3.new(1.5,7,3)
                Character:WaitForChild("HumanoidRootPart").Attachment7.Position = Vector3.new(1.9,8,3)
                Character:WaitForChild("HumanoidRootPart").Attachment8.Position = Vector3.new(2.7,6.4,3)
                Character:WaitForChild("HumanoidRootPart").Attachment9.Position = Vector3.new(3.22,7.5,3)
            Character:WaitForChild("HumanoidRootPart").Attachment10.Position = Vector3.new(2.6,3.4,3)

		    Hats.palm.Handle.Attachment.Rotation = Vector3.new(0,0,20)
                Hats.point1.Handle.Attachment.Rotation = Vector3.new(90,0,20)
                Hats.point2.Handle.Attachment.Rotation = Vector3.new(90,0,20)
                Hats.middle1.Handle.Attachment.Rotation = Vector3.new(90,0,23)
                Hats.middle2.Handle.Attachment.Rotation = Vector3.new(90,0,23)
                Hats.ring1.Handle.Attachment.Rotation = Vector3.new(90,0,22)
                Hats.ring2.Handle.Attachment.Rotation = Vector3.new(90,0,22)
                Hats.pinki1.Handle.Attachment.Rotation = Vector3.new(90,0,25)
                Hats.pinki2.Handle.Attachment.Rotation = Vector3.new(90,0,25)
            Hats.thumb.Handle.Attachment.Rotation = Vector3.new(0,90,-10)

           toggle = true
 else
                Character:WaitForChild("HumanoidRootPart").Attachment1.Position = Vector3.new(0,5,3)
                Character:WaitForChild("HumanoidRootPart").Attachment2.Position = Vector3.new(-2.05,7,3)
                Character:WaitForChild("HumanoidRootPart").Attachment3.Position = Vector3.new(-2.19,8.4,3)
                Character:WaitForChild("HumanoidRootPart").Attachment4.Position = Vector3.new(-0.65,7,3)
                Character:WaitForChild("HumanoidRootPart").Attachment5.Position = Vector3.new(-0.7,8.5,3)
                Character:WaitForChild("HumanoidRootPart").Attachment6.Position = Vector3.new(0.65,7,3)
                Character:WaitForChild("HumanoidRootPart").Attachment7.Position = Vector3.new(0.7,8.5,3)
                Character:WaitForChild("HumanoidRootPart").Attachment8.Position = Vector3.new(2.1,7,3)
                Character:WaitForChild("HumanoidRootPart").Attachment9.Position = Vector3.new(2.22,8.4,3)
            Character:WaitForChild("HumanoidRootPart").Attachment10.Position = Vector3.new(3,4.4,3)
            
		    Hats.palm.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.point1.Handle.Attachment.Rotation = Vector3.new(90,0,-5)
                Hats.point2.Handle.Attachment.Rotation = Vector3.new(90,0,-5)
                Hats.middle1.Handle.Attachment.Rotation = Vector3.new(90,0,-2)
                Hats.middle2.Handle.Attachment.Rotation = Vector3.new(90,0,-2)
                Hats.ring1.Handle.Attachment.Rotation = Vector3.new(90,0,2)
                Hats.ring2.Handle.Attachment.Rotation = Vector3.new(90,0,2)
                Hats.pinki1.Handle.Attachment.Rotation = Vector3.new(90,0,5)
                Hats.pinki2.Handle.Attachment.Rotation = Vector3.new(90,0,5)
            Hats.thumb.Handle.Attachment.Rotation = Vector3.new(0,90,-30)

            toggle = false
        end
    end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "v" then
     if toggle == false then

                Character:WaitForChild("HumanoidRootPart").Attachment1.Position = Vector3.new(0,-2,-7)
                Character:WaitForChild("HumanoidRootPart").Attachment2.Position = Vector3.new(0,-1.4,-1.5)
                Character:WaitForChild("HumanoidRootPart").Attachment3.Position = Vector3.new(0,-1.4,-3.5)
                Character:WaitForChild("HumanoidRootPart").Attachment4.Position = Vector3.new(-0.5,0,-5)
                Character:WaitForChild("HumanoidRootPart").Attachment5.Position = Vector3.new(-1,-1,-5)
                Character:WaitForChild("HumanoidRootPart").Attachment6.Position = Vector3.new(-0.5,0,-7)
                Character:WaitForChild("HumanoidRootPart").Attachment7.Position = Vector3.new(-1,-1,-7)
                Character:WaitForChild("HumanoidRootPart").Attachment8.Position = Vector3.new(-0.5,0,-9)
                Character:WaitForChild("HumanoidRootPart").Attachment9.Position = Vector3.new(-1,-1,-9)
            Character:WaitForChild("HumanoidRootPart").Attachment10.Position = Vector3.new(1,-1,-8.6)

		    Hats.palm.Handle.Attachment.Rotation = Vector3.new(90,90,0)
                Hats.point1.Handle.Attachment.Rotation = Vector3.new(0,0,90)
                Hats.point2.Handle.Attachment.Rotation = Vector3.new(0,0,90)
                Hats.middle1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.middle2.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.ring1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.ring2.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.pinki1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.pinki2.Handle.Attachment.Rotation = Vector3.new(90,0,0)
            Hats.thumb.Handle.Attachment.Rotation = Vector3.new(0,50,40)

           toggle = true
 else
                Character:WaitForChild("HumanoidRootPart").Attachment1.Position = Vector3.new(0,-2,-3)
                Character:WaitForChild("HumanoidRootPart").Attachment2.Position = Vector3.new(0,-1.4,-1.5)
                Character:WaitForChild("HumanoidRootPart").Attachment3.Position = Vector3.new(0,-1.4,-3.5)
                Character:WaitForChild("HumanoidRootPart").Attachment4.Position = Vector3.new(-0.5,0,-1)
                Character:WaitForChild("HumanoidRootPart").Attachment5.Position = Vector3.new(-1,-1,-1)
                Character:WaitForChild("HumanoidRootPart").Attachment6.Position = Vector3.new(-0.5,0,-3)
                Character:WaitForChild("HumanoidRootPart").Attachment7.Position = Vector3.new(-1,-1,-3)
                Character:WaitForChild("HumanoidRootPart").Attachment8.Position = Vector3.new(-0.5,0,-5)
                Character:WaitForChild("HumanoidRootPart").Attachment9.Position = Vector3.new(-1,-1,-5)
            Character:WaitForChild("HumanoidRootPart").Attachment10.Position = Vector3.new(1,-1,-4.6)
            
		    Hats.palm.Handle.Attachment.Rotation = Vector3.new(90,90,0)
                Hats.point1.Handle.Attachment.Rotation = Vector3.new(0,0,90)
                Hats.point2.Handle.Attachment.Rotation = Vector3.new(0,0,90)
                Hats.middle1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.middle2.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.ring1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.ring2.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.pinki1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.pinki2.Handle.Attachment.Rotation = Vector3.new(90,0,0)
            Hats.thumb.Handle.Attachment.Rotation = Vector3.new(0,50,40)

            toggle = false
        end
    end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "f" then
     if toggle == false then

                 Character:WaitForChild("HumanoidRootPart").Attachment1.Position = Vector3.new(-0.424, -1.207, -1.814)
                Character:WaitForChild("HumanoidRootPart").Attachment2.Position = Vector3.new(1.477, 1.894, -1.814)
                Character:WaitForChild("HumanoidRootPart").Attachment3.Position = Vector3.new(-2.291, 1.394, -1.814)
                Character:WaitForChild("HumanoidRootPart").Attachment4.Position = Vector3.new(-3.299, 1.677, -1.814)
                Character:WaitForChild("HumanoidRootPart").Attachment5.Position = Vector3.new(-1.197, -0.244, -0.921)
                Character:WaitForChild("HumanoidRootPart").Attachment6.Position = Vector3.new(-0.72, -0.377, 0.165)
                Character:WaitForChild("HumanoidRootPart").Attachment7.Position = Vector3.new(-1.546, -1.488, -0.921)
                Character:WaitForChild("HumanoidRootPart").Attachment8.Position = Vector3.new(-1.068, -1.616, 0.165)
                Character:WaitForChild("HumanoidRootPart").Attachment9.Position = Vector3.new(-1.931, -2.86, -0.921)
            Character:WaitForChild("HumanoidRootPart").Attachment10.Position = Vector3.new(-1.612, -2.95, 0.165)

		    Hats.palm.Handle.Attachment.Rotation = Vector3.new(0, 180, -74.33)
                Hats.point1.Handle.Attachment.Rotation = Vector3.new(74.33, -90, 180)
                Hats.point2.Handle.Attachment.Rotation = Vector3.new(15.67, 90, 0)
                Hats.middle1.Handle.Attachment.Rotation = Vector3.new(15.67, 90, 0)
                Hats.middle2.Handle.Attachment.Rotation = Vector3.new(0, 0, 15.67)
                Hats.ring1.Handle.Attachment.Rotation = Vector3.new(15.67, 90, 0)
                Hats.ring2.Handle.Attachment.Rotation = Vector3.new(0, 0, 15.67)
                Hats.pinki1.Handle.Attachment.Rotation = Vector3.new(15.67, 90, 0)
                Hats.pinki2.Handle.Attachment.Rotation = Vector3.new(0, 0, 15.67)
            Hats.thumb.Handle.Attachment.Rotation = Vector3.new(15.67, 90, 0)

           toggle = true
 else
            
                Character:WaitForChild("HumanoidRootPart").Attachment1.Position = Vector3.new(0, -15, 0)
                Character:WaitForChild("HumanoidRootPart").Attachment2.Position = Vector3.new(-1.3, 7, 0)
                Character:WaitForChild("HumanoidRootPart").Attachment3.Position = Vector3.new(1.3, 7, 0)
                Character:WaitForChild("HumanoidRootPart").Attachment4.Position = Vector3.new(0, 3.3, 0)
                Character:WaitForChild("HumanoidRootPart").Attachment5.Position = Vector3.new(-1, 3.3, 0)
                Character:WaitForChild("HumanoidRootPart").Attachment6.Position = Vector3.new(1, 3.3, 0)
                Character:WaitForChild("HumanoidRootPart").Attachment7.Position = Vector3.new(-3, 3.3, 0)
                Character:WaitForChild("HumanoidRootPart").Attachment8.Position = Vector3.new(3, 3.3, 0)
                Character:WaitForChild("HumanoidRootPart").Attachment9.Position = Vector3.new(0, -15, 0)
            Character:WaitForChild("HumanoidRootPart").Attachment10.Position = Vector3.new(0, -15, 0)
            
		    Hats.palm.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.point1.Handle.Attachment.Rotation = Vector3.new(90, 0, 0)
                Hats.point2.Handle.Attachment.Rotation = Vector3.new(90, 0, 0)
                Hats.middle1.Handle.Attachment.Rotation = Vector3.new(0, 90, 0)
                Hats.middle2.Handle.Attachment.Rotation = Vector3.new(0, 90, 0)
                Hats.ring1.Handle.Attachment.Rotation = Vector3.new(0, 90, 0)
                Hats.ring2.Handle.Attachment.Rotation = Vector3.new(0, 90, 0)
                Hats.pinki1.Handle.Attachment.Rotation = Vector3.new(0, 90, 0)
                Hats.pinki2.Handle.Attachment.Rotation = Vector3.new(0,0,0)
            Hats.thumb.Handle.Attachment.Rotation = Vector3.new(0,0,0)

            toggle = false
        end
    end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "r" then
     if toggle == false then
         
                 Character:WaitForChild("HumanoidRootPart").Attachment1.Position = Vector3.new(0,-15,0)
                Character:WaitForChild("HumanoidRootPart").Attachment2.Position = Vector3.new(-1.7,6,0)
                Character:WaitForChild("HumanoidRootPart").Attachment3.Position = Vector3.new(1.7,6,0)
                Character:WaitForChild("HumanoidRootPart").Attachment4.Position = Vector3.new(1.8,2.76,0)
                Character:WaitForChild("HumanoidRootPart").Attachment5.Position = Vector3.new(3.33,2.05,0)
                Character:WaitForChild("HumanoidRootPart").Attachment6.Position = Vector3.new(-1.8,2.76,0)
                Character:WaitForChild("HumanoidRootPart").Attachment7.Position = Vector3.new(-3.33,2.05,0)
                Character:WaitForChild("HumanoidRootPart").Attachment8.Position = Vector3.new(0,3,0)
                Character:WaitForChild("HumanoidRootPart").Attachment9.Position = Vector3.new(0,3,0)
            Character:WaitForChild("HumanoidRootPart").Attachment10.Position = Vector3.new(0,-15,0)

		    Hats.palm.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.point1.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.point2.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.middle1.Handle.Attachment.Rotation = Vector3.new(15,90,0)
                Hats.middle2.Handle.Attachment.Rotation = Vector3.new(35,90,0)
                Hats.ring1.Handle.Attachment.Rotation = Vector3.new(-15,90,0)
                Hats.ring2.Handle.Attachment.Rotation = Vector3.new(-35,90,0)
                Hats.pinki1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.pinki2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
            Hats.thumb.Handle.Attachment.Rotation = Vector3.new(0,0,0)

           toggle = true
 else
            
                Character:WaitForChild("HumanoidRootPart").Attachment1.Position = Vector3.new(0,-15,0)
                Character:WaitForChild("HumanoidRootPart").Attachment2.Position = Vector3.new(-1.7,6,0)
                Character:WaitForChild("HumanoidRootPart").Attachment3.Position = Vector3.new(1.7,6,0)
                Character:WaitForChild("HumanoidRootPart").Attachment4.Position = Vector3.new(1.8,3.23,0)
                Character:WaitForChild("HumanoidRootPart").Attachment5.Position = Vector3.new(3.33,3.94,0)
                Character:WaitForChild("HumanoidRootPart").Attachment6.Position = Vector3.new(-1.8,3.23,0)
                Character:WaitForChild("HumanoidRootPart").Attachment7.Position = Vector3.new(-3.33,3.94,0)
                Character:WaitForChild("HumanoidRootPart").Attachment8.Position = Vector3.new(0,3,0)
                Character:WaitForChild("HumanoidRootPart").Attachment9.Position = Vector3.new(0,3,0)
            Character:WaitForChild("HumanoidRootPart").Attachment10.Position = Vector3.new(0,-15,0)

		    Hats.palm.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.point1.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.point2.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.middle1.Handle.Attachment.Rotation = Vector3.new(-15,90,0)
                Hats.middle2.Handle.Attachment.Rotation = Vector3.new(-35,90,0)
                Hats.ring1.Handle.Attachment.Rotation = Vector3.new(15,90,0)
                Hats.ring2.Handle.Attachment.Rotation = Vector3.new(35,90,0)
                Hats.pinki1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.pinki2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
            Hats.thumb.Handle.Attachment.Rotation = Vector3.new(0,0,0)

            toggle = false
        end
    end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "g" then
     if toggle == false then

                 Character:WaitForChild("HumanoidRootPart").Attachment1.Position = Vector3.new(0,-15,0)
                Character:WaitForChild("HumanoidRootPart").Attachment2.Position = Vector3.new(0,5,0)
                Character:WaitForChild("HumanoidRootPart").Attachment3.Position = Vector3.new(0,6,0)
                Character:WaitForChild("HumanoidRootPart").Attachment4.Position = Vector3.new(-1.8,-15,0)
                Character:WaitForChild("HumanoidRootPart").Attachment5.Position = Vector3.new(-1,4.5,0)
                Character:WaitForChild("HumanoidRootPart").Attachment6.Position = Vector3.new(1,4.5,0)
                Character:WaitForChild("HumanoidRootPart").Attachment7.Position = Vector3.new(0,8,0)
                Character:WaitForChild("HumanoidRootPart").Attachment8.Position = Vector3.new(0,-15,0)
                Character:WaitForChild("HumanoidRootPart").Attachment9.Position = Vector3.new(0,3.6,0)
            Character:WaitForChild("HumanoidRootPart").Attachment10.Position = Vector3.new(0,8,0)

		    Hats.palm.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.point1.Handle.Attachment.Rotation = Vector3.new(90,180,0)
                Hats.point2.Handle.Attachment.Rotation = Vector3.new(90,180,0)
                Hats.middle1.Handle.Attachment.Rotation = Vector3.new(90,180,0)
                Hats.middle2.Handle.Attachment.Rotation = Vector3.new(0,90,180)
                Hats.ring1.Handle.Attachment.Rotation = Vector3.new(0,90,180)
                Hats.ring2.Handle.Attachment.Rotation = Vector3.new(90,180,0)
                Hats.pinki1.Handle.Attachment.Rotation = Vector3.new(90,180,0)
                Hats.pinki2.Handle.Attachment.Rotation = Vector3.new(90,180,0)
            Hats.thumb.Handle.Attachment.Rotation = Vector3.new(90,180,0)

           toggle = true
 else
            
                             Character:WaitForChild("HumanoidRootPart").Attachment1.Position = Vector3.new(0,-15,0)
                Character:WaitForChild("HumanoidRootPart").Attachment2.Position = Vector3.new(0,5,0)
                Character:WaitForChild("HumanoidRootPart").Attachment3.Position = Vector3.new(0,6,0)
                Character:WaitForChild("HumanoidRootPart").Attachment4.Position = Vector3.new(-1.8,-15,0)
                Character:WaitForChild("HumanoidRootPart").Attachment5.Position = Vector3.new(-1,7,0)
                Character:WaitForChild("HumanoidRootPart").Attachment6.Position = Vector3.new(1,7,0)
                Character:WaitForChild("HumanoidRootPart").Attachment7.Position = Vector3.new(0,8,0)
                Character:WaitForChild("HumanoidRootPart").Attachment8.Position = Vector3.new(0,-15,0)
                Character:WaitForChild("HumanoidRootPart").Attachment9.Position = Vector3.new(0,3.6,0)
            Character:WaitForChild("HumanoidRootPart").Attachment10.Position = Vector3.new(0,8,0)

		    Hats.palm.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.point1.Handle.Attachment.Rotation = Vector3.new(90,180,0)
                Hats.point2.Handle.Attachment.Rotation = Vector3.new(90,180,0)
                Hats.middle1.Handle.Attachment.Rotation = Vector3.new(90,180,0)
                Hats.middle2.Handle.Attachment.Rotation = Vector3.new(0,90,180)
                Hats.ring1.Handle.Attachment.Rotation = Vector3.new(0,90,180)
                Hats.ring2.Handle.Attachment.Rotation = Vector3.new(90,180,0)
                Hats.pinki1.Handle.Attachment.Rotation = Vector3.new(90,180,0)
                Hats.pinki2.Handle.Attachment.Rotation = Vector3.new(90,180,0)
            Hats.thumb.Handle.Attachment.Rotation = Vector3.new(90,180,0)

            toggle = false
        end
    end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "y" then
     if toggle == false then

                 Character:WaitForChild("HumanoidRootPart").Attachment1.Position = Vector3.new(0,7,0)
                Character:WaitForChild("HumanoidRootPart").Attachment2.Position = Vector3.new(-2,5.5,-1)
                Character:WaitForChild("HumanoidRootPart").Attachment3.Position = Vector3.new(2,4,-1)
                Character:WaitForChild("HumanoidRootPart").Attachment4.Position = Vector3.new(-0.6,5.5,-1)
                Character:WaitForChild("HumanoidRootPart").Attachment5.Position = Vector3.new(-0.6,5,-0.5)
                Character:WaitForChild("HumanoidRootPart").Attachment6.Position = Vector3.new(0.7,5.5,-1)
                Character:WaitForChild("HumanoidRootPart").Attachment7.Position = Vector3.new(0.7,5,-0.5)
                Character:WaitForChild("HumanoidRootPart").Attachment8.Position = Vector3.new(2,5.5,-1)
                Character:WaitForChild("HumanoidRootPart").Attachment9.Position = Vector3.new(-2,5,-0.5)
            Character:WaitForChild("HumanoidRootPart").Attachment10.Position = Vector3.new(3,6.7,0.5)

		    Hats.palm.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.point1.Handle.Attachment.Rotation = Vector3.new(-90,0,0)
                Hats.point2.Handle.Attachment.Rotation = Vector3.new(-90,0,0)
                Hats.middle1.Handle.Attachment.Rotation = Vector3.new(-90,0,0)
                Hats.middle2.Handle.Attachment.Rotation = Vector3.new(180,0,0)
                Hats.ring1.Handle.Attachment.Rotation = Vector3.new(-90,0,0)
                Hats.ring2.Handle.Attachment.Rotation = Vector3.new(180,0,0)
                Hats.pinki1.Handle.Attachment.Rotation = Vector3.new(-90,0,0)
                Hats.pinki2.Handle.Attachment.Rotation = Vector3.new(180,0,0)
            Hats.thumb.Handle.Attachment.Rotation = Vector3.new(90,30,0)

           toggle = true
 else

                 Character:WaitForChild("HumanoidRootPart").Attachment1.Position = Vector3.new(0,4,5)
                Character:WaitForChild("HumanoidRootPart").Attachment2.Position = Vector3.new(-2,5,4)
                Character:WaitForChild("HumanoidRootPart").Attachment3.Position = Vector3.new(2,5,2)
                Character:WaitForChild("HumanoidRootPart").Attachment4.Position = Vector3.new(-0.6,5,4)
                Character:WaitForChild("HumanoidRootPart").Attachment5.Position = Vector3.new(-0.6,4.5,3)
                Character:WaitForChild("HumanoidRootPart").Attachment6.Position = Vector3.new(0.7,5,4)
                Character:WaitForChild("HumanoidRootPart").Attachment7.Position = Vector3.new(0.7,4.5,3)
                Character:WaitForChild("HumanoidRootPart").Attachment8.Position = Vector3.new(2,5,4)
                Character:WaitForChild("HumanoidRootPart").Attachment9.Position = Vector3.new(-2,4.5,3)
            Character:WaitForChild("HumanoidRootPart").Attachment10.Position = Vector3.new(3,3.5,4.7)

		    Hats.palm.Handle.Attachment.Rotation = Vector3.new(180,0,0)
                Hats.point1.Handle.Attachment.Rotation = Vector3.new(-180,0,0)
                Hats.point2.Handle.Attachment.Rotation = Vector3.new(-180,0,0)
                Hats.middle1.Handle.Attachment.Rotation = Vector3.new(-180,0,0)
                Hats.middle2.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.ring1.Handle.Attachment.Rotation = Vector3.new(-180,0,0)
                Hats.ring2.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.pinki1.Handle.Attachment.Rotation = Vector3.new(-180,0,0)
                Hats.pinki2.Handle.Attachment.Rotation = Vector3.new(90,0,0)
            Hats.thumb.Handle.Attachment.Rotation = Vector3.new(0,30,0)

            toggle = false
        end
    end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "t" then
     if toggle == false then
         
                 Character:WaitForChild("HumanoidRootPart").Attachment1.Position = Vector3.new(0,0.5,-5)
                Character:WaitForChild("HumanoidRootPart").Attachment2.Position = Vector3.new(-2,-0.5,-6)
                Character:WaitForChild("HumanoidRootPart").Attachment3.Position = Vector3.new(-2,-1.5,-5.5)
                Character:WaitForChild("HumanoidRootPart").Attachment4.Position = Vector3.new(-0.5,-0.5,-6)
                Character:WaitForChild("HumanoidRootPart").Attachment5.Position = Vector3.new(-0.5,-1.5,-5.5)
                Character:WaitForChild("HumanoidRootPart").Attachment6.Position = Vector3.new(0.8,-0.5,-6)
                Character:WaitForChild("HumanoidRootPart").Attachment7.Position = Vector3.new(0.791,-1.5,-5.5)
                Character:WaitForChild("HumanoidRootPart").Attachment8.Position = Vector3.new(2,-0.5,-6)
                Character:WaitForChild("HumanoidRootPart").Attachment9.Position = Vector3.new(2,-1.5,-5.5)
            Character:WaitForChild("HumanoidRootPart").Attachment10.Position = Vector3.new(2.684,-0.704,-4.323)

		    Hats.palm.Handle.Attachment.Rotation = Vector3.new(90,180,0)
                Hats.point1.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.point2.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.middle1.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.middle2.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.ring1.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.ring2.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.pinki1.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.pinki2.Handle.Attachment.Rotation = Vector3.new(0,0,0)
            Hats.thumb.Handle.Attachment.Rotation = Vector3.new(-57.51,-47.54,-138.88)

           toggle = true
 else
            
                             Character:WaitForChild("HumanoidRootPart").Attachment1.Position = Vector3.new(0,0.5,-3)
                Character:WaitForChild("HumanoidRootPart").Attachment2.Position = Vector3.new(-2,-0.5,-4)
                Character:WaitForChild("HumanoidRootPart").Attachment3.Position = Vector3.new(-2,-1.5,-3.5)
                Character:WaitForChild("HumanoidRootPart").Attachment4.Position = Vector3.new(-0.5,-0.5,-4)
                Character:WaitForChild("HumanoidRootPart").Attachment5.Position = Vector3.new(-0.5,-1.5,-3.5)
                Character:WaitForChild("HumanoidRootPart").Attachment6.Position = Vector3.new(0.8,-0.5,-4)
                Character:WaitForChild("HumanoidRootPart").Attachment7.Position = Vector3.new(0.791,-1.5,-3.5)
                Character:WaitForChild("HumanoidRootPart").Attachment8.Position = Vector3.new(2,-0.5,-4)
                Character:WaitForChild("HumanoidRootPart").Attachment9.Position = Vector3.new(2,-1.5,-3.5)
            Character:WaitForChild("HumanoidRootPart").Attachment10.Position = Vector3.new(2.684,-0.704,-2.323)

		    Hats.palm.Handle.Attachment.Rotation = Vector3.new(90,180,0)
                Hats.point1.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.point2.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.middle1.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.middle2.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.ring1.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.ring2.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.pinki1.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.pinki2.Handle.Attachment.Rotation = Vector3.new(0,0,0)
            Hats.thumb.Handle.Attachment.Rotation = Vector3.new(-57.51,-47.54,-138.88)

            toggle = false
        end
    end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "b" then
     if toggle == false then
         
                 Character:WaitForChild("HumanoidRootPart").Attachment1.Position = Vector3.new(0,7,1)
                Character:WaitForChild("HumanoidRootPart").Attachment2.Position = Vector3.new(0.5,9,-1)
                Character:WaitForChild("HumanoidRootPart").Attachment3.Position = Vector3.new(1,6.35,-0.5)
                Character:WaitForChild("HumanoidRootPart").Attachment4.Position = Vector3.new(0.5,6.35,-1)
                Character:WaitForChild("HumanoidRootPart").Attachment5.Position = Vector3.new(1,9,-0.5)
                Character:WaitForChild("HumanoidRootPart").Attachment6.Position = Vector3.new(0.5,5,-1)
                Character:WaitForChild("HumanoidRootPart").Attachment7.Position = Vector3.new(1,5,-0.5)
                Character:WaitForChild("HumanoidRootPart").Attachment8.Position = Vector3.new(0.5,7.7,-1)
                Character:WaitForChild("HumanoidRootPart").Attachment9.Position = Vector3.new(1,7.7,-0.5)
            Character:WaitForChild("HumanoidRootPart").Attachment10.Position = Vector3.new(-1,10,1)

		    Hats.palm.Handle.Attachment.Rotation = Vector3.new(180,180,90)
                Hats.point1.Handle.Attachment.Rotation = Vector3.new(90,180,90)
                Hats.point2.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.middle1.Handle.Attachment.Rotation = Vector3.new(90,180,90)
                Hats.middle2.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.ring1.Handle.Attachment.Rotation = Vector3.new(90,180,90)
                Hats.ring2.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.pinki1.Handle.Attachment.Rotation = Vector3.new(90,180,90)
                Hats.pinki2.Handle.Attachment.Rotation = Vector3.new(0,0,0)
            Hats.thumb.Handle.Attachment.Rotation = Vector3.new(90,0,0)

           toggle = true
 else
            
                 Character:WaitForChild("HumanoidRootPart").Attachment1.Position = Vector3.new(0,7,1)
                Character:WaitForChild("HumanoidRootPart").Attachment2.Position = Vector3.new(0.5,9,-1)
                Character:WaitForChild("HumanoidRootPart").Attachment3.Position = Vector3.new(1,6.35,-0.5)
                Character:WaitForChild("HumanoidRootPart").Attachment4.Position = Vector3.new(0.5,6.35,-1)
                Character:WaitForChild("HumanoidRootPart").Attachment5.Position = Vector3.new(1,9,-0.5)
                Character:WaitForChild("HumanoidRootPart").Attachment6.Position = Vector3.new(0.5,5,-1)
                Character:WaitForChild("HumanoidRootPart").Attachment7.Position = Vector3.new(1,5,-0.5)
                Character:WaitForChild("HumanoidRootPart").Attachment8.Position = Vector3.new(0.5,7.7,-1)
                Character:WaitForChild("HumanoidRootPart").Attachment9.Position = Vector3.new(1,7.7,-0.5)
            Character:WaitForChild("HumanoidRootPart").Attachment10.Position = Vector3.new(-1,4,1)

		    Hats.palm.Handle.Attachment.Rotation = Vector3.new(180,180,90)
                Hats.point1.Handle.Attachment.Rotation = Vector3.new(90,180,90)
                Hats.point2.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.middle1.Handle.Attachment.Rotation = Vector3.new(90,180,90)
                Hats.middle2.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.ring1.Handle.Attachment.Rotation = Vector3.new(90,180,90)
                Hats.ring2.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.pinki1.Handle.Attachment.Rotation = Vector3.new(90,180,90)
                Hats.pinki2.Handle.Attachment.Rotation = Vector3.new(0,0,0)
            Hats.thumb.Handle.Attachment.Rotation = Vector3.new(90,0,0)

            toggle = false
        end
    end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "h" then
     if toggle == false then
         
                Character:WaitForChild("HumanoidRootPart").Attachment1.Position = Vector3.new(3, 5, 0)
                Character:WaitForChild("HumanoidRootPart").Attachment2.Position = Vector3.new(0.996, 6.25, -2.165)
                Character:WaitForChild("HumanoidRootPart").Attachment3.Position = Vector3.new(0.996, 7.103, -3.894)
                Character:WaitForChild("HumanoidRootPart").Attachment4.Position = Vector3.new(2.352, 6.25, -2.165)
                Character:WaitForChild("HumanoidRootPart").Attachment5.Position = Vector3.new(2.354, 7.103, -3.894)
                Character:WaitForChild("HumanoidRootPart").Attachment6.Position = Vector3.new(3.687, 6.25, -2.165)
                Character:WaitForChild("HumanoidRootPart").Attachment7.Position = Vector3.new(3.685, 7.103, -3.894)
                Character:WaitForChild("HumanoidRootPart").Attachment8.Position = Vector3.new(4.998, 6.25, -2.165)
                Character:WaitForChild("HumanoidRootPart").Attachment9.Position = Vector3.new(5.001, 7.103, -3.894)
            Character:WaitForChild("HumanoidRootPart").Attachment10.Position = Vector3.new(0.322, 4.332, -0.369)

		    Hats.palm.Handle.Attachment.Rotation = Vector3.new(-60, 0, -180)
                Hats.point1.Handle.Attachment.Rotation = Vector3.new(30, 0, -180)
                Hats.point2.Handle.Attachment.Rotation = Vector3.new(22.06, 0, 180)
                Hats.middle1.Handle.Attachment.Rotation = Vector3.new(30, 0, 180)
                Hats.middle2.Handle.Attachment.Rotation = Vector3.new(22.06, 0, 180)
                Hats.ring1.Handle.Attachment.Rotation = Vector3.new(30, 0, 180)
                Hats.ring2.Handle.Attachment.Rotation = Vector3.new(22.06, 0, 180)
                Hats.pinki1.Handle.Attachment.Rotation = Vector3.new(30, 0, 180)
                Hats.pinki2.Handle.Attachment.Rotation = Vector3.new(22.06, 0, 180)
            Hats.thumb.Handle.Attachment.Rotation = Vector3.new(-2.46, 18.96, 155.99)

           toggle = true
 else
            
                 Character:WaitForChild("HumanoidRootPart").Attachment1.Position = Vector3.new(0,-15,0)
                Character:WaitForChild("HumanoidRootPart").Attachment2.Position = Vector3.new(-0,5.028,0)
                Character:WaitForChild("HumanoidRootPart").Attachment3.Position = Vector3.new(-1.498,4.53,0)
                Character:WaitForChild("HumanoidRootPart").Attachment4.Position = Vector3.new(-1.99,8.028,-0)
                Character:WaitForChild("HumanoidRootPart").Attachment5.Position = Vector3.new(1.981,5.045,0)
                Character:WaitForChild("HumanoidRootPart").Attachment6.Position = Vector3.new(-0.011,8.011,-0)
                Character:WaitForChild("HumanoidRootPart").Attachment7.Position = Vector3.new(-1.496, 6.533, -0)
                Character:WaitForChild("HumanoidRootPart").Attachment8.Position = Vector3.new(1.491, 8.499, 0)
                Character:WaitForChild("HumanoidRootPart").Attachment9.Position = Vector3.new(1.49, 6.527, 0)
            Character:WaitForChild("HumanoidRootPart").Attachment10.Position = Vector3.new(0.335, 6.536, -0)

		    Hats.palm.Handle.Attachment.Rotation = Vector3.new(180,180,90)
                Hats.point1.Handle.Attachment.Rotation = Vector3.new(-89.76,0,-180)
                Hats.point2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.middle1.Handle.Attachment.Rotation = Vector3.new(-89.76,-0.03,-179.97)
                Hats.middle2.Handle.Attachment.Rotation = Vector3.new(89.84,180,180)
                Hats.ring1.Handle.Attachment.Rotation = Vector3.new(-89.82,180,-180)
                Hats.ring2.Handle.Attachment.Rotation = Vector3.new(0, 90, 0)
                Hats.pinki1.Handle.Attachment.Rotation = Vector3.new(0, 90, 0)
                Hats.pinki2.Handle.Attachment.Rotation = Vector3.new(0, 90, 0)
            Hats.thumb.Handle.Attachment.Rotation = Vector3.new(0, 90, 0)

            toggle = false
        end
    end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "j" then
     if toggle == false then
         
               Character:WaitForChild("HumanoidRootPart").Attachment1.Position = Vector3.new(-0, 4, -0)
                Character:WaitForChild("HumanoidRootPart").Attachment2.Position = Vector3.new(-2.078, 6.135, 0)
                Character:WaitForChild("HumanoidRootPart").Attachment3.Position = Vector3.new(-2.212, 7.623, -0)
                Character:WaitForChild("HumanoidRootPart").Attachment4.Position = Vector3.new(-0.806, 5, -1.5)
                Character:WaitForChild("HumanoidRootPart").Attachment5.Position = Vector3.new(-0.807, 4, -2)
                Character:WaitForChild("HumanoidRootPart").Attachment6.Position = Vector3.new(0.666, 5, -1.5)
                Character:WaitForChild("HumanoidRootPart").Attachment7.Position = Vector3.new(0.667, 4, -2)
                Character:WaitForChild("HumanoidRootPart").Attachment8.Position = Vector3.new(2.046, 6.078, -0)
                Character:WaitForChild("HumanoidRootPart").Attachment9.Position = Vector3.new(2.189, 7.566, 0)
            Character:WaitForChild("HumanoidRootPart").Attachment10.Position = Vector3.new(3, 3.429, -0.278)

		    Hats.palm.Handle.Attachment.Rotation = Vector3.new(0, 0, 0)
                Hats.point1.Handle.Attachment.Rotation = Vector3.new(-84.49, -90, 0)
                Hats.point2.Handle.Attachment.Rotation = Vector3.new(-84.48, -90, 0)
                Hats.middle1.Handle.Attachment.Rotation = Vector3.new(0, 0, 90)
                Hats.middle2.Handle.Attachment.Rotation = Vector3.new(90, 0, 0)
                Hats.ring1.Handle.Attachment.Rotation = Vector3.new(0, 0, 90)
                Hats.ring2.Handle.Attachment.Rotation = Vector3.new(90, 0, 0)
                Hats.pinki1.Handle.Attachment.Rotation = Vector3.new(84.48, -90, 0)
                Hats.pinki2.Handle.Attachment.Rotation = Vector3.new(84.48, -90, 0)
            Hats.thumb.Handle.Attachment.Rotation = Vector3.new(13.42, -74.41, 149.27)

           toggle = true
 else
                 Character:WaitForChild("HumanoidRootPart").Attachment1.Position = Vector3.new(0,4,0)
                Character:WaitForChild("HumanoidRootPart").Attachment2.Position = Vector3.new(-2.003, 6.416, -0.098)
                Character:WaitForChild("HumanoidRootPart").Attachment3.Position = Vector3.new(-2.003, 8.404, -0.242)
                Character:WaitForChild("HumanoidRootPart").Attachment4.Position = Vector3.new(-0.376, 6.204, -0.423)
                Character:WaitForChild("HumanoidRootPart").Attachment5.Position = Vector3.new(-0.376, 8.013, -1.255)
                Character:WaitForChild("HumanoidRootPart").Attachment6.Position = Vector3.new(0.891, 5.872, -0.56)
                Character:WaitForChild("HumanoidRootPart").Attachment7.Position = Vector3.new(0.891, 7.315, -1.926)
                Character:WaitForChild("HumanoidRootPart").Attachment8.Position = Vector3.new(1.993, 4.997, -1.325)
                Character:WaitForChild("HumanoidRootPart").Attachment9.Position = Vector3.new(1.993, 4.497, -2.07)
            Character:WaitForChild("HumanoidRootPart").Attachment10.Position = Vector3.new(1.993, 3.001, -0.992)

		    Hats.palm.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.point1.Handle.Attachment.Rotation = Vector3.new(-85.87, 0, 0)
                Hats.point2.Handle.Attachment.Rotation = Vector3.new(-85.87, 0, 0)
                Hats.middle1.Handle.Attachment.Rotation = Vector3.new(-65.3, 0, 0)
                Hats.middle2.Handle.Attachment.Rotation = Vector3.new(-65.3, 0, 0)
                Hats.ring1.Handle.Attachment.Rotation = Vector3.new(-46.55, 0, 0)
                Hats.ring2.Handle.Attachment.Rotation = Vector3.new(-46.55, 0, 0)
                Hats.pinki1.Handle.Attachment.Rotation = Vector3.new(0, 0, 180)
                Hats.pinki2.Handle.Attachment.Rotation = Vector3.new(90, 0, 0)
            Hats.thumb.Handle.Attachment.Rotation = Vector3.new(0, 0, -180)

            toggle = false
        end
    end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "u" then
     if toggle == false then
         
               Character:WaitForChild("HumanoidRootPart").Attachment1.Position = Vector3.new(0, -15, 0)
                Character:WaitForChild("HumanoidRootPart").Attachment2.Position = Vector3.new(-0.025, -1.098, -1.443)
                Character:WaitForChild("HumanoidRootPart").Attachment3.Position = Vector3.new(-0.025, -1.098, -3.377)
                Character:WaitForChild("HumanoidRootPart").Attachment4.Position = Vector3.new(-0.025, -1.098, -5.304)
                Character:WaitForChild("HumanoidRootPart").Attachment5.Position = Vector3.new(-0.025, -1.098, -7.241)
                Character:WaitForChild("HumanoidRootPart").Attachment6.Position = Vector3.new(-0.025, -1.098, -9.129)
                Character:WaitForChild("HumanoidRootPart").Attachment7.Position = Vector3.new(-0.025, -1.098, -11.015)
                Character:WaitForChild("HumanoidRootPart").Attachment8.Position = Vector3.new(-0.025, -1.098, -12.95)
                Character:WaitForChild("HumanoidRootPart").Attachment9.Position = Vector3.new(-0.025, -1.098, -14.875)
            Character:WaitForChild("HumanoidRootPart").Attachment10.Position = Vector3.new(0, -1.381, -0.295)

		    Hats.palm.Handle.Attachment.Rotation = Vector3.new(0, 180, 0)
                Hats.point1.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.point2.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.middle1.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.middle2.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.ring1.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.ring2.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.pinki1.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.pinki2.Handle.Attachment.Rotation = Vector3.new(0,0,0)
            Hats.thumb.Handle.Attachment.Rotation = Vector3.new(0, 90, 0)

           toggle = true
 else

                 Character:WaitForChild("HumanoidRootPart").Attachment1.Position = Vector3.new(0, -15, 0)
                Character:WaitForChild("HumanoidRootPart").Attachment2.Position = Vector3.new(0.945, 8.181, -0)
                Character:WaitForChild("HumanoidRootPart").Attachment3.Position = Vector3.new(-0.41, 7.539, 0)
                Character:WaitForChild("HumanoidRootPart").Attachment4.Position = Vector3.new(-1.261, 6, 0)
                Character:WaitForChild("HumanoidRootPart").Attachment5.Position = Vector3.new(1.261, 6, 0)
                Character:WaitForChild("HumanoidRootPart").Attachment6.Position = Vector3.new(-0.8, 4, 0)
                Character:WaitForChild("HumanoidRootPart").Attachment7.Position = Vector3.new(0.8, 4, 0)
                Character:WaitForChild("HumanoidRootPart").Attachment8.Position = Vector3.new(2.14, 3.53, 0)
                Character:WaitForChild("HumanoidRootPart").Attachment9.Position = Vector3.new(-2.14, 3.53, 0)
            Character:WaitForChild("HumanoidRootPart").Attachment10.Position = Vector3.new(-1.231, 8.362, 0)

		    Hats.palm.Handle.Attachment.Rotation = Vector3.new(0, 180, 0)
                Hats.point1.Handle.Attachment.Rotation = Vector3.new(-45, 90, 0)
                Hats.point2.Handle.Attachment.Rotation = Vector3.new(45, 90, 0)
                Hats.middle1.Handle.Attachment.Rotation = Vector3.new(0, 0, 0)
                Hats.middle2.Handle.Attachment.Rotation = Vector3.new(0, 0, 0)
                Hats.ring1.Handle.Attachment.Rotation = Vector3.new(-15, 90, 0)
                Hats.ring2.Handle.Attachment.Rotation = Vector3.new(15, 90, 0)
                Hats.pinki1.Handle.Attachment.Rotation = Vector3.new(25, 90, 0)
                Hats.pinki2.Handle.Attachment.Rotation = Vector3.new(-25, 90, 0)
            Hats.thumb.Handle.Attachment.Rotation = Vector3.new(45, 90, 0)

            toggle = false
        end
    end
end)
