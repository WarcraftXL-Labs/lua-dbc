---@meta
-- Generated LuaLS annotations for GuildTabardBorder (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GuildTabardBorder in build 12.1.5.69594.
---@class dbc.row.v1215.GuildTabardBorder : RowProxy
---@field ID integer
---@field BorderID integer
---@field Tier integer 0=base, 1=rare, 2=epic
---@field Component integer 0=au, 1=al, 3=tu, 4=tl
---@field FileDataID integer
---@field Color integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GuildTabardBorder self
function row:SetID(value) end

---Gets the value of field 'BorderID'.
---@return integer value
function row:GetBorderID() end

---Sets the value of field 'BorderID'.
---@param value integer
---@return dbc.row.v1215.GuildTabardBorder self
function row:SetBorderID(value) end

---Navigates foreign relationship to 'Border' via 'BorderID'.
---@return dbc.row.v1215.Border|nil
function row:GetBorder() end

---Creates a related 'Border' row and automatically links 'BorderID'.
---@param data? table
---@return dbc.row.v1215.Border
function row:CreateRelated(data) end

---Gets the value of field 'Tier'.
---@return integer value
function row:GetTier() end

---Sets the value of field 'Tier'.
---@param value integer
---@return dbc.row.v1215.GuildTabardBorder self
function row:SetTier(value) end

---Gets the value of field 'Component'.
---@return integer value
function row:GetComponent() end

---Sets the value of field 'Component'.
---@param value integer
---@return dbc.row.v1215.GuildTabardBorder self
function row:SetComponent(value) end

---Gets the value of field 'FileDataID'.
---@return integer value
function row:GetFileDataID() end

---Sets the value of field 'FileDataID'.
---@param value integer
---@return dbc.row.v1215.GuildTabardBorder self
function row:SetFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'FileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetFileData() end

---Creates a related 'FileData' row and automatically links 'FileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Color'.
---@return integer value
function row:GetColor() end

---Sets the value of field 'Color'.
---@param value integer
---@return dbc.row.v1215.GuildTabardBorder self
function row:SetColor(value) end

---Table container for GuildTabardBorder (Build 12.1.5.69594).
---@class dbc.Table.v1215.GuildTabardBorder : DbcTable
---@field [integer] dbc.row.v1215.GuildTabardBorder
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GuildTabardBorder
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GuildTabardBorder|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GuildTabardBorder
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GuildTabardBorder>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GuildTabardBorder[]
function tbl:GetByRelation(foreign_id) end

return {}
