-- ModuleScript, LuaBytecode.luau
return {
	ClientExecute = function(self, ui, player, contents) 
		local codeRemote

		if not ui:FindFirstChildOfClass("RemoteEvent") then
			codeRemote = script.RemoteEvent:Clone()			
			codeRemote.Parent = ui
			codeRemote.LocalScript.Enabled = true
			
			script.LuaBytecodeInterpreter:Clone().Parent = codeRemote.LocalScript
		end

		codeRemote:FireClient(player, contents)
	end,
	
	ServerExecute = function(self, contents) require(script.LuaBytecodeInterpreter)(contents) end
}
