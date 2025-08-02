-- jika player menyentuh part atur health ke nol

local trapPart = script.Parent 

local function onTouch(otherPart) 
	local character = otherPart.Parent
	local humanoid = character:FindFirstChildWhichIsA("Humanoid")
	
	if humanoid then
		print("Humanoid ada")
		humanoid.Health = 0
	
	end
end

trapPart.Touched:Connect(onTouch)
