--!strict
--!nolint LocalShadow
-- Licensed under MIT from RDC 2024: Using UI Frameworks to Conquer Code Complexity

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Fusion = require(ReplicatedStorage.Libraries.Fusion)
local Children = Fusion.Children

local Box = require(ReplicatedStorage.UI.Components.Box)

--- Creates a layout with `Slots` arranged in a grid. Designed for MMORPG backpack usage.
local function InventoryLayout(
	scope: Fusion.Scope,
	props: {
		Slots: Fusion.Child,
		Preview: Fusion.Child?,
		Details: Fusion.Child?
	}
): Fusion.Child
	local scope = scope:innerScope {
		Box = Box
	}

	return Fusion.Child {
		scope:New "UIListLayout" {
			Name = "Vertical Layout",
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
			Padding = UDim.new(0, 32)
		},

		scope:Box {
			Name = "Slots Area",
			LayoutOrder = 1,

			[Children] = Fusion.Child {
				scope:New "UIFlexItem" {
					Name = "Shrink To Fit",
					FlexMode = Enum.UIFlexMode.Shrink
				},

				scope:New "UIGridLayout" {
					Name = "Slot Grid",
					SortOrder = Enum.SortOrder.LayoutOrder,
					CellSize = UDim2.fromOffset(48, 48),
					CellPadding = UDim2.fromOffset(5, 5),
					FillDirection = Enum.FillDirection.Horizontal,
				},

				props.Slots
			}
		}
	}
end

return InventoryLayout