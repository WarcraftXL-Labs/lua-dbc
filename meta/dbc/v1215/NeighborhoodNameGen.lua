---@meta
-- Generated LuaLS annotations for NeighborhoodNameGen (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of NeighborhoodNameGen in build 12.1.5.69594.
---@class dbc.row.v1215.NeighborhoodNameGen : RowProxy
---@field ID integer
---@field Prefix_lang string
---@field Middle_lang string
---@field Suffix_lang string
---@field NeighborhoodMapID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.NeighborhoodNameGen self
function row:SetID(value) end

---Gets the value of field 'Prefix_lang'.
---@return string value
function row:GetPrefix_lang() end

---Sets the value of field 'Prefix_lang'.
---@param value string
---@return dbc.row.v1215.NeighborhoodNameGen self
function row:SetPrefix_lang(value) end

---Gets the value of field 'Middle_lang'.
---@return string value
function row:GetMiddle_lang() end

---Sets the value of field 'Middle_lang'.
---@param value string
---@return dbc.row.v1215.NeighborhoodNameGen self
function row:SetMiddle_lang(value) end

---Gets the value of field 'Suffix_lang'.
---@return string value
function row:GetSuffix_lang() end

---Sets the value of field 'Suffix_lang'.
---@param value string
---@return dbc.row.v1215.NeighborhoodNameGen self
function row:SetSuffix_lang(value) end

---Gets the value of field 'NeighborhoodMapID'.
---@return integer value
function row:GetNeighborhoodMapID() end

---Sets the value of field 'NeighborhoodMapID'.
---@param value integer
---@return dbc.row.v1215.NeighborhoodNameGen self
function row:SetNeighborhoodMapID(value) end

---Navigates foreign relationship to 'NeighborhoodMap' via 'NeighborhoodMapID'.
---@return dbc.row.v1215.NeighborhoodMap|nil
function row:GetNeighborhoodMap() end

---Creates a related 'NeighborhoodMap' row and automatically links 'NeighborhoodMapID'.
---@param data? table
---@return dbc.row.v1215.NeighborhoodMap
function row:CreateRelated(data) end

---Table container for NeighborhoodNameGen (Build 12.1.5.69594).
---@class dbc.Table.v1215.NeighborhoodNameGen : DbcTable
---@field [integer] dbc.row.v1215.NeighborhoodNameGen
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.NeighborhoodNameGen
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.NeighborhoodNameGen|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.NeighborhoodNameGen
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.NeighborhoodNameGen>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.NeighborhoodNameGen[]
function tbl:GetByRelation(foreign_id) end

return {}
