function data()
return {
	numLanes = 2,
	streetWidth = 10.0,
	sidewalkWidth = 4.0,
	sidewalkHeight = .3,
	yearFrom = 1925,
	yearTo = 0,
	aiLock = true,
	country = false,
	speed = 50.0,
	type = "new medium",
	name = _("Medium repaintable street"),
	desc = _("Two-lane street with a speed limit of %2%. Press and hold <shift> to apply a paint asset."),
	categories = { "urban" },
	borderGroundTex = "street_border.lua",
	materials = {
		streetPaving = {
		},		
		streetBorder = {
			-- name = "street/new_medium_border.mtl",
			-- size = { 2.0, .3 }
		},			
		streetLane = {
			name = "street/new_medium_lane.mtl",
			size = { 4.0, 4.0 }
		},
		streetStripe = {
		},
		streetStripeMedian = {
			-- name = "street/new_medium_stripes.mtl",
			-- size = { 8.0, .5 }		
		},
		streetTram = {
		},
		streetTramTrack = {
			name = "street/new_medium_tram_track.mtl",
			size = { 2.0, 2.0 }
		},
		streetBus = {
			-- name = "street/new_medium_bus.mtl",
			-- size = { 12, 2.7 }
		},
		crossingLane = {
			name = "street/new_medium_lane.mtl",
			size = { 4.0, 4.0 }
		},
		crossingBus = {
		},
		crossingTram = {
		},
		crossingTramTrack = {
			name = "street/new_medium_tram_track.mtl",
			size = { 2.0, 2.0 }
		},
		crossingCrosswalk = {
			-- name = "street/new_medium_crosswalk.mtl",
			-- size = { 3.0, 2.5 }
		},
		crossingStopline = {
			-- name = "street/new_medium_stopline.mtl",
			-- size = { 6.0, .5 }
		},
		sidewalkPaving = {
			name = "street/new_medium_sidewalk.mtl",
			size = { 4.0, 4.0 }
		},
		sidewalkLane = {	

		},
		sidewalkBorderInner = {
			name = "street/new_medium_sidewalk_border_inner.mtl",		
			size = { 3, 0.6 }
		},
		sidewalkBorderOuter = {
			name = "street/new_medium_sidewalk_border_outer.mtl",		
			size = { 8.0, 0.41602 }
		},
		sidewalkCurb = {
			name = "street/new_medium_sidewalk_curb.mtl",
			size = { 3, .35 }
		},
		sidewalkWall = {
			name = "street/new_medium_sidewalk_wall.mtl",
			size = { 8.0, 0.41602 }
		}		
	},	
	assets = {
		-- {
		-- 	name = "street/street_light_eu_c.mdl",
		-- 	offset = 10.0,
		-- 	distance = 20.0,
		-- 	prob = 1.0,
		-- 	offsetOrth = 3.4,
		-- 	randRot = false,
		-- 	oneSideOnly = false,
		-- 	alignToElevation = false,
		-- 	avoidFaceEdges = false,
		-- 	placeOnBridge = true,
		-- }, 
		-- {
		-- 	name = "street/street_asset_mix/fireplug_eu_c.mdl",
		-- 	offset = 9.0,
		-- 	distance = 49.0,
		-- 	prob = 0.5,
		-- 	offsetOrth = 0.5,
		-- 	randRot = false,
		-- 	oneSideOnly = false,
		-- 	alignToElevation = true,
		-- 	avoidFaceEdges = false,
		-- }, 
		-- {
		-- 	name = "street/street_asset_mix/mailbox_eu_c.mdl",
		-- 	offset = 8,
		-- 	distance = 40.0,
		-- 	prob = 0.3,
		-- 	offsetOrth = 0.4,
		-- 	randRot = false,
		-- 	oneSideOnly = false,
		-- 	alignToElevation = false,
		-- 	avoidFaceEdges = false,
		-- },  
		-- {
		-- 	name = "street/street_asset_mix/trash_standing_c.mdl",
		-- 	offset = 20,
		-- 	distance = 50.0,
		-- 	prob = 0.5,
		-- 	offsetOrth = 3.0,
		-- 	randRot = false,
		-- 	oneSideOnly = false,
		-- 	alignToElevation = true,
		-- 	avoidFaceEdges = false,
		-- }, 
		-- {
		-- 	name = "asset/tree_bed_new.mdl",
		-- 	offset = 15.0,
		-- 	distance = 22.0,
		-- 	prob = 1.0,
		-- 	offsetOrth = 2.89,
		-- 	randRot = false,
		-- 	oneSideOnly = false,
		-- 	alignToElevation = true,
		-- 	avoidFaceEdges = true,
		-- }, 
		-- {
		-- 	name = "tree/lombardy_poplar.mdl",
		-- 	offset = 15.0,
		-- 	distance = 22.0,
		-- 	prob = 1.0,
		-- 	offsetOrth = 2.8,
		-- 	randRot = true,
		-- 	oneSideOnly = false,
		-- 	alignToElevation = false,
		-- 	avoidFaceEdges = true,
		-- },
	},
	signalAssetName = "asset/ampel.mdl",
	cost = 56.0,
}
end
