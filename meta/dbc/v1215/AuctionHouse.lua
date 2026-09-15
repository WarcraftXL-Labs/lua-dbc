---@meta
-- Generated LuaLS annotations for AuctionHouse (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AuctionHouse in build 12.1.5.69594.
---@class dbc.row.v1215.AuctionHouse : RowProxy
---@field ID integer
---@field Name_lang string
---@field FactionID integer
---@field DepositRate integer
---@field ConsignmentRate integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AuctionHouse self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.AuctionHouse self
function row:SetName_lang(value) end

---Gets the value of field 'FactionID'.
---@return integer value
function row:GetFactionID() end

---Sets the value of field 'FactionID'.
---@param value integer
---@return dbc.row.v1215.AuctionHouse self
function row:SetFactionID(value) end

---Navigates foreign relationship to 'Faction' via 'FactionID'.
---@return dbc.row.v1215.Faction|nil
function row:GetFaction() end

---Creates a related 'Faction' row and automatically links 'FactionID'.
---@param data? table
---@return dbc.row.v1215.Faction
function row:CreateRelated(data) end

---Gets the value of field 'DepositRate'.
---@return integer value
function row:GetDepositRate() end

---Sets the value of field 'DepositRate'.
---@param value integer
---@return dbc.row.v1215.AuctionHouse self
function row:SetDepositRate(value) end

---Gets the value of field 'ConsignmentRate'.
---@return integer value
function row:GetConsignmentRate() end

---Sets the value of field 'ConsignmentRate'.
---@param value integer
---@return dbc.row.v1215.AuctionHouse self
function row:SetConsignmentRate(value) end

---Table container for AuctionHouse (Build 12.1.5.69594).
---@class dbc.Table.v1215.AuctionHouse : DbcTable
---@field [integer] dbc.row.v1215.AuctionHouse
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AuctionHouse
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AuctionHouse|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AuctionHouse
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AuctionHouse>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AuctionHouse[]
function tbl:GetByRelation(foreign_id) end

return {}
