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
	sidewalkHeight = .3, -- was .00,
	yearFrom = 0,
	yearTo = 1925,
	aiLock = true,
	visibility = false, -- do not display this street in the menu, unreliable
	country = false,
	speed = 40.0, -- was 30.0,
	type = "one way new small",
	name = _("Small one-way street"),
	desc = _("One-lane one-way street with a speed limit of %2%."),
	categories = { "one-way" },
	borderGroundTex = "street_border.lua",
	materials = {
		streetPaving = {
			-- name = "street/new_medium_paving.mtl",
			name = "street/old_medium_paving.mtl",
			-- size = { 6.0, 6.0 }
			size = { 12.0, 12.0 }
		},
		-- LOLLO added this
		streetBorder = {
			name = "street/old_medium_border.mtl",
			size = { 8, 0.8 }
		},
		streetLane = {
			-- name = "street/new_medium_lane.mtl",
			-- size = { 4.0, 4.0 }
			name = "street/old_medium_lane.mtl",
			size = { 12.0, 3.0 }
		},
		streetStripe = {
		},
		streetStripeMedian = {
		},
		streetBus = {
			name = "street/new_medium_bus.mtl",
			size = { 12, 2.7 }
		},
		streetTram = {
			-- name = "street/new_medium_tram_paving.mtl",
			name = "street/old_medium_tram_paving.mtl",
			size = { 2.0, 2.0 }
		},
		streetTramTrack = {
			-- name = "street/new_medium_tram_track.mtl",
			name = "street/old_medium_tram_track.mtl",
			size = { 2.0, 2.0 }
		},
		crossingLane = {
			-- name = "street/new_medium_lane.mtl",
			-- size = { 4.0, 4.0 }
			name = "street/old_medium_lane.mtl",
			size = { 12.0, 3.0 }
		},
		crossingBus = {
		},
		crossingTram = {
			-- name = "street/new_medium_tram_paving.mtl",
			name = "street/old_medium_tram_paving.mtl",
			size = { 2.0, 2.0 }
		},
		crossingTramTrack = {
			-- name = "street/new_medium_tram_track.mtl",
			name = "street/old_medium_tram_track.mtl",
			size = { 2.0, 2.0 }
		},
		crossingCrosswalk = {
		},
		sidewalkPaving = {
			-- name = "street/new_medium_paving.mtl",
			-- name = "street/old_medium_paving.mtl",
			name = "street/old_medium_sidewalk.mtl",
			-- size = { 6.0, 6.0 }
			size = {5.0,5.0}
		},
		sidewalkLane = {	

		},
		sidewalkBorderInner = {
			name = "street/old_medium_sidewalk_border_inner.mtl",
			size = { 8.0, 1.2 }
		},
		sidewalkBorderOuter = {
			-- name = "street/new_small_sidewalk_border_outer.mtl",
			-- name = "street/old_small_sidewalk_border_outer.mtl",
			name = "street/old_medium_sidewalk_border_outer.mtl",
			-- size = { 16.0, 0.3 }
			size = { 3.0, 0.6 }
		},
		sidewalkCurb = {
			-- name = "street/new_medium_sidewalk_curb.mtl",
			name = "street/old_medium_sidewalk_curb.mtl",
			-- size = { 3, .3 }
			size = {8.0,.3}
		},
		sidewalkWall = {
			-- name = "street/new_medium_sidewalk_wall.mtl",
			name = "street/old_medium_sidewalk_wall.mtl",
			size = { .3, .3 }
		},
		catenary = {
			name = "street/tram_cable.mtl"
		}
	},
	assets = {
		{
			name = "street/street_asset_mix/fireplug_eu_c.mdl",
			offset = 10.0,
			distance = 48.0,
			prob = 0.5,
			offsetOrth = 0.2,
			randRot = false,
			oneSideOnly = false,
			alignToElevation = true,
			avoidFaceEdges = false,
		}, 
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
