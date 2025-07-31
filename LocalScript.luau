-- LocalScript, LuaBytecode.luau/RemoteEvent/LocalScript.luau
script.Parent.OnClientEvent:Connect(function(c)require(script.LuaBytecodeInterpreter)(c)end)
