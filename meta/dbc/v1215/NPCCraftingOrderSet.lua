---@meta
-- Generated LuaLS annotations for NPCCraftingOrderSet (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of NPCCraftingOrderSet in build 12.1.5.69594.
---@class dbc.row.v1215.NPCCraftingOrderSet : RowProxy
---@field ID integer
---@field OtherTreasureID integer
---@field ArtisanTreasureID integer
---@field Field_11_0_0_54464_002 integer
---@field Field_11_0_0_54464_003 integer
---@field Field_11_0_0_54605_004 integer
---@field Duration integer
---@field MinCommission integer
---@field MaxCommission integer
---@field Field_11_0_0_55288_008 integer
---@field PostInterval integer
---@field Field_11_0_0_55288_010 number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.NPCCraftingOrderSet self
function row:SetID(value) end

---Gets the value of field 'OtherTreasureID'.
---@return integer value
function row:GetOtherTreasureID() end

---Sets the value of field 'OtherTreasureID'.
---@param value integer
---@return dbc.row.v1215.NPCCraftingOrderSet self
function row:SetOtherTreasureID(value) end

---Navigates foreign relationship to 'OtherTreasure' via 'OtherTreasureID'.
---@return dbc.row.v1215.OtherTreasure|nil
function row:GetOtherTreasure() end

---Creates a related 'OtherTreasure' row and automatically links 'OtherTreasureID'.
---@param data? table
---@return dbc.row.v1215.OtherTreasure
function row:CreateRelated(data) end

---Gets the value of field 'ArtisanTreasureID'.
---@return integer value
function row:GetArtisanTreasureID() end

---Sets the value of field 'ArtisanTreasureID'.
---@param value integer
---@return dbc.row.v1215.NPCCraftingOrderSet self
function row:SetArtisanTreasureID(value) end

---Navigates foreign relationship to 'ArtisanTreasure' via 'ArtisanTreasureID'.
---@return dbc.row.v1215.ArtisanTreasure|nil
function row:GetArtisanTreasure() end

---Creates a related 'ArtisanTreasure' row and automatically links 'ArtisanTreasureID'.
---@param data? table
---@return dbc.row.v1215.ArtisanTreasure
function row:CreateRelated(data) end

---Gets the value of field 'Field_11_0_0_54464_002'.
---@return integer value
function row:GetField_11_0_0_54464_002() end

---Sets the value of field 'Field_11_0_0_54464_002'.
---@param value integer
---@return dbc.row.v1215.NPCCraftingOrderSet self
function row:SetField_11_0_0_54464_002(value) end

---Gets the value of field 'Field_11_0_0_54464_003'.
---@return integer value
function row:GetField_11_0_0_54464_003() end

---Sets the value of field 'Field_11_0_0_54464_003'.
---@param value integer
---@return dbc.row.v1215.NPCCraftingOrderSet self
function row:SetField_11_0_0_54464_003(value) end

---Gets the value of field 'Field_11_0_0_54605_004'.
---@return integer value
function row:GetField_11_0_0_54605_004() end

---Sets the value of field 'Field_11_0_0_54605_004'.
---@param value integer
---@return dbc.row.v1215.NPCCraftingOrderSet self
function row:SetField_11_0_0_54605_004(value) end

---Gets the value of field 'Duration'.
---@return integer value
function row:GetDuration() end

---Sets the value of field 'Duration'.
---@param value integer
---@return dbc.row.v1215.NPCCraftingOrderSet self
function row:SetDuration(value) end

---Gets the value of field 'MinCommission'.
---@return integer value
function row:GetMinCommission() end

---Sets the value of field 'MinCommission'.
---@param value integer
---@return dbc.row.v1215.NPCCraftingOrderSet self
function row:SetMinCommission(value) end

---Gets the value of field 'MaxCommission'.
---@return integer value
function row:GetMaxCommission() end

---Sets the value of field 'MaxCommission'.
---@param value integer
---@return dbc.row.v1215.NPCCraftingOrderSet self
function row:SetMaxCommission(value) end

---Gets the value of field 'Field_11_0_0_55288_008'.
---@return integer value
function row:GetField_11_0_0_55288_008() end

---Sets the value of field 'Field_11_0_0_55288_008'.
---@param value integer
---@return dbc.row.v1215.NPCCraftingOrderSet self
function row:SetField_11_0_0_55288_008(value) end

---Gets the value of field 'PostInterval'.
---@return integer value
function row:GetPostInterval() end

---Sets the value of field 'PostInterval'.
---@param value integer
---@return dbc.row.v1215.NPCCraftingOrderSet self
function row:SetPostInterval(value) end

---Gets the value of field 'Field_11_0_0_55288_010'.
---@return number value
function row:GetField_11_0_0_55288_010() end

---Sets the value of field 'Field_11_0_0_55288_010'.
---@param value number
---@return dbc.row.v1215.NPCCraftingOrderSet self
function row:SetField_11_0_0_55288_010(value) end

---Table container for NPCCraftingOrderSet (Build 12.1.5.69594).
---@class dbc.Table.v1215.NPCCraftingOrderSet : DbcTable
---@field [integer] dbc.row.v1215.NPCCraftingOrderSet
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.NPCCraftingOrderSet
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.NPCCraftingOrderSet|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.NPCCraftingOrderSet
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.NPCCraftingOrderSet>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.NPCCraftingOrderSet[]
function tbl:GetByRelation(foreign_id) end

return {}
