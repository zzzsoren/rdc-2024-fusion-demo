--!strict
-- Licensed under MIT from RDC 2024: Using UI Frameworks to Conquer Code Complexity

--- A set of colours that can be used to theme UI components.
export type Palette = {
	fill: {
		light: Color3,
		mid: Color3,
		dark: Color3
	},
	stroke: {
		light: Color3,
		mid: Color3,
		dark: Color3
	},
	text: Color3
}

local function Palette(x: Palette)
	return x
end

--- Predefined colours and metrics for use throughout UI modules.
return {
	fonts = {
		title = Enum.Font.Arial,
		body = Enum.Font.FredokaOne

	},

	textSizes = {
		title = 36,
		bigger = 36,
		header = 24,
		buttons = 24,
		tooltip = 18,
		body = 15
	},

	colours = {
blackdesert = Palette {
	fill = {
		light = Color3.fromHex("#E6D8C3"),  -- Pale beige for slot highlights (luma ~0.85 for visibility)
		mid = Color3.fromHex("#8B6F47"),    -- Medium brown base (earth tones evoke leather/wood)
		dark = Color3.fromHex("#4A3B2A")    -- Deep brown shadows (contrast ratio >4.5:1 w/ white text)
	},
	stroke = {
		light = Color3.fromHex("#D4A017"),  -- Bright gold borders for accents
		mid = Color3.fromHex("#B8860B"),    -- Muted gold mid-tones
		dark = Color3.fromHex("#8B6508")    -- Darkened gold for depth
	},
	text = Color3.fromHex("#000000")     -- Crisp white for item labels (quantities could tint #FFFF00 if scripted separately)
},
		platinum = Palette {
			fill = {
				light = Color3.fromHex("#FFFFFF"),
				mid = Color3.fromHex("#CCDDEE"),
				dark = Color3.fromHex("#AFC7DE")
			},
			stroke = {
				light = Color3.fromHex("#A7B9CA"),
				mid = Color3.fromHex("#8899AA"),
				dark = Color3.fromHex("#798795")
			},
			text = Color3.fromHex("#112233")
		},

		red = Palette {
			fill = {
				light = Color3.fromHex("#FF5C00"),
				mid = Color3.fromHex("#E70101"),
				dark = Color3.fromHex("#C51A24")
			},
			stroke = {
				light = Color3.fromHex("#BB0000"),
				mid = Color3.fromHex("#A20000"),
				dark = Color3.fromHex("#890000")
			},
			text = Color3.fromHex("#FFF7F3")
		},

		yellow = Palette {
			fill = {
				light = Color3.fromHex("#FFF8E0"),
				mid = Color3.fromHex("#F4CE4A"),
				dark = Color3.fromHex("#EBC12C")
			},
			stroke = {
				light = Color3.fromHex("#D5AA13"),
				mid = Color3.fromHex("#B99E0C"),
				dark = Color3.fromHex("#A58308")
			},
			text = Color3.fromHex("#362A00")
		},

		green = Palette {
			fill = {
				light = Color3.fromHex("#9EFF23"),
				mid = Color3.fromHex("#26EE46"),
				dark = Color3.fromHex("#00CE46")
			},
			stroke = {
				light = Color3.fromHex("#52BB00"),
				mid = Color3.fromHex("#069941"),
				dark = Color3.fromHex("#078338")
			},
			text = Color3.fromHex("#004019")
		}
	}
}

