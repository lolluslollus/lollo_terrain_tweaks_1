function data()
	return {
		en = {
			["_DESC"] = [[
				[h2]This mod improves the looks of the terrain.[/h2]
				- It removes the dirt, which the stock game places along roads, pedestrian connections and stations.
				- It adds new paving textures.
				- It adjusts the road station one-way entrances.
				- It adds repaintable road station entrances.
				[h2]Dirt[/h2]
				Adjust the file res/scripts/lollo_terrain_tweaks/settings.lua to switch the dirt on or off. The parameter \"removeDirt\" can be true (no dirt, default) or false (leave the dirt in place).
				[h2]Modular road stations[/h2]
				To change the ground in a road station or its repaintable entries, press and hold <shift> and apply a \"paint tool\" asset.
				For the best road station looks (after 1925), leave the tarmac inside and apply a different paint tool in the corners outside the pavement.

				[b]Thanks to Enzojz for luadump![/b]
			]],
			["_NAME"] = "Terrain tweaks"
		},
	}
end
