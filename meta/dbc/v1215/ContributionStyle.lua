---@meta
-- Generated LuaLS annotations for ContributionStyle (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ContributionStyle in build 12.1.5.69594.
---@class dbc.row.v1215.ContributionStyle : RowProxy
---@field ID integer
---@field StateName_lang string
---@field TooltipLine_lang string
---@field StateColor integer
---@field Flags integer 1 = TooltipUseTimeRemaining
---@field StatusBarAtlas integer
---@field BorderAtlas integer
---@field BannerAtlas integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ContributionStyle self
function row:SetID(value) end

---Gets the value of field 'StateName_lang'.
---@return string value
function row:GetStateName_lang() end

---Sets the value of field 'StateName_lang'.
---@param value string
---@return dbc.row.v1215.ContributionStyle self
function row:SetStateName_lang(value) end

---Gets the value of field 'TooltipLine_lang'.
---@return string value
function row:GetTooltipLine_lang() end

---Sets the value of field 'TooltipLine_lang'.
---@param value string
---@return dbc.row.v1215.ContributionStyle self
function row:SetTooltipLine_lang(value) end

---Gets the value of field 'StateColor'.
---@return integer value
function row:GetStateColor() end

---Sets the value of field 'StateColor'.
---@param value integer
---@return dbc.row.v1215.ContributionStyle self
function row:SetStateColor(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ContributionStyle self
function row:SetFlags(value) end

---Gets the value of field 'StatusBarAtlas'.
---@return integer value
function row:GetStatusBarAtlas() end

---Sets the value of field 'StatusBarAtlas'.
---@param value integer
---@return dbc.row.v1215.ContributionStyle self
function row:SetStatusBarAtlas(value) end

---Gets the value of field 'BorderAtlas'.
---@return integer value
function row:GetBorderAtlas() end

---Sets the value of field 'BorderAtlas'.
---@param value integer
---@return dbc.row.v1215.ContributionStyle self
function row:SetBorderAtlas(value) end

---Gets the value of field 'BannerAtlas'.
---@return integer value
function row:GetBannerAtlas() end

---Sets the value of field 'BannerAtlas'.
---@param value integer
---@return dbc.row.v1215.ContributionStyle self
function row:SetBannerAtlas(value) end

---Table container for ContributionStyle (Build 12.1.5.69594).
---@class dbc.Table.v1215.ContributionStyle : DbcTable
---@field [integer] dbc.row.v1215.ContributionStyle
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ContributionStyle
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ContributionStyle|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ContributionStyle
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ContributionStyle>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ContributionStyle[]
function tbl:GetByRelation(foreign_id) end

return {}
