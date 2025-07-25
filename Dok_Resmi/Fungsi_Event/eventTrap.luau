--[[
	Kode ini berada di dalam Part
	menghancurkan apapun yang di sentuh
]]

local trap = script.Parent

local function onTouch(objectTouched)
	print("Sesuatu menyentuh trap")
	-- menghapus objek yang menyentuh
	
	objectTouched:Destroy()
end

-- menghubungkan fungsi ke Touched event
trap.Touched:Connect(onTouch)
