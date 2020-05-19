function data()
return {
	laneConfig = {
		{ forward = true },
		{ forward = true },
		{ forward = true },
	},
	streetWidth = 5.0, -- LOLLO was 3.0,
	sidewalkWidth = 2.0, -- LOLLO was 3.0
	sidewalkHeight = .3,
	yearFrom = 1925,
	yearTo = 0,
	upgrade = true,
	country = false,
	speed = 50.0,
	type = "one way new small",
	name = _("Small one-way repaintable street"),
	desc = _("One-lane one-way repaintable street with a speed limit of %2%. Press and hold <shift> to apply a paint asset."),
	categories = { "one-way" },
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
		},
		sidewalkPaving = {
			-- name = "street/new_medium_paving.mtl",
			-- size = { 6.0, 6.0 }
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
			-- name = "street/new_small_sidewalk_border_outer.mtl",		
			-- size = { 16.0, 0.3 }
			name = "street/new_medium_sidewalk_border_outer.mtl",		
			size = { 8.0, 0.41602 }
		},
		sidewalkCurb = {
			name = "street/new_medium_sidewalk_curb.mtl",
			size = { 3, .35 }
		},
		sidewalkWall = {
			name = "street/new_medium_sidewalk_wall.mtl",
			-- size = { .3, .3 }
			size = { 8.0, 0.41602 }
		},
		catenary = {
			name = "street/tram_cable.mtl"
		}
	},
	assets = {
	},
	catenary = {
		pole = {
			name = "asset/tram_pole.mdl",
			assets = { "asset/tram_pole_light.mdl" }  
		},
		poleCrossbar = {
			name = "asset/tram_pole_crossbar.mdl",
			assets = { "asset/tram_pole_light.mdl" }  
		},
		poleDoubleCrossbar = {
			name = "asset/tram_pole_double_crossbar.mdl",
			assets = { "asset/tram_pole_light.mdl" }  
		},
		isolatorStraight = "asset/cable_isolator.mdl",
		isolatorCurve = "asset/cable_isolator.mdl",
		junction = "asset/cable_junction.mdl"
	},
	signalAssetName = "asset/ampel.mdl",
	cost = 32.0,
}
end
