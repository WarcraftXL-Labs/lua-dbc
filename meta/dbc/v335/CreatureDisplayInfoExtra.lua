---@meta
-- Generated LuaLS annotations for CreatureDisplayInfoExtra (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of CreatureDisplayInfoExtra in build 3.3.5.12340.
---@class dbc.row.v335.CreatureDisplayInfoExtra : RowProxy
---@field ID integer
---@field DisplayRaceID integer
---@field DisplaySexID integer
---@field SkinID integer
---@field FaceID integer
---@field HairStyleID integer
---@field HairColorID integer
---@field FacialHairID integer
---@field NPCItemDisplay integer[]
---@field Flags integer
---@field BakeName string

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.CreatureDisplayInfoExtra self
function row:SetID(value) end

---Gets the value of field 'DisplayRaceID'.
---@return integer value
function row:GetDisplayRaceID() end

---Sets the value of field 'DisplayRaceID'.
---@param value integer
---@return dbc.row.v335.CreatureDisplayInfoExtra self
function row:SetDisplayRaceID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'DisplayRaceID'.
---@return dbc.row.v335.ChrRaces|nil
function row:GetDisplayRace() end

---Creates a related 'ChrRaces' row and automatically links 'DisplayRaceID'.
---@param data? table
---@return dbc.row.v335.ChrRaces
function row:CreateRelated(data) end

---Gets the value of field 'DisplaySexID'.
---@return integer value
function row:GetDisplaySexID() end

---Sets the value of field 'DisplaySexID'.
---@param value integer
---@return dbc.row.v335.CreatureDisplayInfoExtra self
function row:SetDisplaySexID(value) end

---Navigates foreign relationship to 'DisplaySex' via 'DisplaySexID'.
---@return dbc.row.v335.DisplaySex|nil
function row:GetDisplaySex() end

---Creates a related 'DisplaySex' row and automatically links 'DisplaySexID'.
---@param data? table
---@return dbc.row.v335.DisplaySex
function row:CreateRelated(data) end

---Gets the value of field 'SkinID'.
---@return integer value
function row:GetSkinID() end

---Sets the value of field 'SkinID'.
---@param value integer
---@return dbc.row.v335.CreatureDisplayInfoExtra self
function row:SetSkinID(value) end

---Navigates foreign relationship to 'Skin' via 'SkinID'.
---@return dbc.row.v335.Skin|nil
function row:GetSkin() end

---Creates a related 'Skin' row and automatically links 'SkinID'.
---@param data? table
---@return dbc.row.v335.Skin
function row:CreateRelated(data) end

---Gets the value of field 'FaceID'.
---@return integer value
function row:GetFaceID() end

---Sets the value of field 'FaceID'.
---@param value integer
---@return dbc.row.v335.CreatureDisplayInfoExtra self
function row:SetFaceID(value) end

---Navigates foreign relationship to 'Face' via 'FaceID'.
---@return dbc.row.v335.Face|nil
function row:GetFace() end

---Creates a related 'Face' row and automatically links 'FaceID'.
---@param data? table
---@return dbc.row.v335.Face
function row:CreateRelated(data) end

---Gets the value of field 'HairStyleID'.
---@return integer value
function row:GetHairStyleID() end

---Sets the value of field 'HairStyleID'.
---@param value integer
---@return dbc.row.v335.CreatureDisplayInfoExtra self
function row:SetHairStyleID(value) end

---Navigates foreign relationship to 'HairStyle' via 'HairStyleID'.
---@return dbc.row.v335.HairStyle|nil
function row:GetHairStyle() end

---Creates a related 'HairStyle' row and automatically links 'HairStyleID'.
---@param data? table
---@return dbc.row.v335.HairStyle
function row:CreateRelated(data) end

---Gets the value of field 'HairColorID'.
---@return integer value
function row:GetHairColorID() end

---Sets the value of field 'HairColorID'.
---@param value integer
---@return dbc.row.v335.CreatureDisplayInfoExtra self
function row:SetHairColorID(value) end

---Navigates foreign relationship to 'HairColor' via 'HairColorID'.
---@return dbc.row.v335.HairColor|nil
function row:GetHairColor() end

---Creates a related 'HairColor' row and automatically links 'HairColorID'.
---@param data? table
---@return dbc.row.v335.HairColor
function row:CreateRelated(data) end

---Gets the value of field 'FacialHairID'.
---@return integer value
function row:GetFacialHairID() end

---Sets the value of field 'FacialHairID'.
---@param value integer
---@return dbc.row.v335.CreatureDisplayInfoExtra self
function row:SetFacialHairID(value) end

---Navigates foreign relationship to 'FacialHair' via 'FacialHairID'.
---@return dbc.row.v335.FacialHair|nil
function row:GetFacialHair() end

---Creates a related 'FacialHair' row and automatically links 'FacialHairID'.
---@param data? table
---@return dbc.row.v335.FacialHair
function row:CreateRelated(data) end

---Gets the value of field 'NPCItemDisplay'.
---@return integer[] value
function row:GetNPCItemDisplay() end

---Sets the value of field 'NPCItemDisplay'.
---@param value integer[]
---@return dbc.row.v335.CreatureDisplayInfoExtra self
function row:SetNPCItemDisplay(value) end

---Gets element at 1-based index in 'NPCItemDisplay'.
---@param index integer
---@return integer value
function row:GetNPCItemDisplayItem(index) end

---Navigates foreign relationship to 'ItemDisplayInfo' via 'NPCItemDisplay'.
---@return dbc.row.v335.ItemDisplayInfo|nil
function row:GetNPCItemDisplay() end

---Creates a related 'ItemDisplayInfo' row and automatically links 'NPCItemDisplay'.
---@param data? table
---@return dbc.row.v335.ItemDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v335.CreatureDisplayInfoExtra self
function row:SetFlags(value) end

---Gets the value of field 'BakeName'.
---@return string value
function row:GetBakeName() end

---Sets the value of field 'BakeName'.
---@param value string
---@return dbc.row.v335.CreatureDisplayInfoExtra self
function row:SetBakeName(value) end

---Table container for CreatureDisplayInfoExtra (Build 3.3.5.12340).
---@class dbc.Table.v335.CreatureDisplayInfoExtra : DbcTable
---@field [integer] dbc.row.v335.CreatureDisplayInfoExtra
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.CreatureDisplayInfoExtra
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.CreatureDisplayInfoExtra|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.CreatureDisplayInfoExtra
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.CreatureDisplayInfoExtra>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.CreatureDisplayInfoExtra[]
function tbl:GetByRelation(foreign_id) end

return {}
