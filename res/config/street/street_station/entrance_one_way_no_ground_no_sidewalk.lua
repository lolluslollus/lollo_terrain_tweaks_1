-- LOLLO NOTE this overrides the stock 1-way entrance
function data()
return {
	laneConfig = {
		{ forward = true },
		{ forward = true },
		{ forward = true },
	},
	streetWidth = 5.0, -- LOLLO was 3.0,
	sidewalkWidth = 2.0, -- LOLLO was 3.0
	sidewalkHeight = 0.0,
	yearFrom = 1925,
	yearTo = 0,
	upgrade = true,
	country = false,
	speed = 50.0, -- was 30.0,
	type = "one way new small",
	name = _("Small one-way repaintable country road"),
	desc = _("One-lane one-way road with a speed limit of %2%. Press and hold <shift> to apply a paint asset."),
	categories = { "highway" },
	borderGroundTex = "street_border.lua",
	materials = {
		streetPaving = {
		},
		streetBorder = {
			-- name = "street/new_medium_border.mtl",
			-- size = { 2.0, .3 }
		},
		streetLane = {
			-- name = "street/new_medium_lane.mtl",
			-- size = { 4.0, 4.0 }
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
			-- name = "street/new_medium_lane.mtl",
			-- size = { 4.0, 4.0 }
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
