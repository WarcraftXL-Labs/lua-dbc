---@meta
-- Generated LuaLS annotations for RewardPackXCurrencyType (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of RewardPackXCurrencyType in build 12.1.5.69594.
---@class dbc.row.v1215.RewardPackXCurrencyType : RowProxy
---@field ID integer
---@field CurrencyTypeID integer
---@field Quantity integer
---@field RewardPackID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.RewardPackXCurrencyType self
function row:SetID(value) end

---Gets the value of field 'CurrencyTypeID'.
---@return integer value
function row:GetCurrencyTypeID() end

---Sets the value of field 'CurrencyTypeID'.
---@param value integer
---@return dbc.row.v1215.RewardPackXCurrencyType self
function row:SetCurrencyTypeID(value) end

---Navigates foreign relationship to 'CurrencyTypes' via 'CurrencyTypeID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetCurrencyType() end

---Creates a related 'CurrencyTypes' row and automatically links 'CurrencyTypeID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Gets the value of field 'Quantity'.
---@return integer value
function row:GetQuantity() end

---Sets the value of field 'Quantity'.
---@param value integer
---@return dbc.row.v1215.RewardPackXCurrencyType self
function row:SetQuantity(value) end

---Gets the value of field 'RewardPackID'.
---@return integer value
function row:GetRewardPackID() end

---Sets the value of field 'RewardPackID'.
---@param value integer
---@return dbc.row.v1215.RewardPackXCurrencyType self
function row:SetRewardPackID(value) end

---Navigates foreign relationship to 'RewardPack' via 'RewardPackID'.
---@return dbc.row.v1215.RewardPack|nil
function row:GetRewardPack() end

---Creates a related 'RewardPack' row and automatically links 'RewardPackID'.
---@param data? table
---@return dbc.row.v1215.RewardPack
function row:CreateRelated(data) end

---Table container for RewardPackXCurrencyType (Build 12.1.5.69594).
---@class dbc.Table.v1215.RewardPackXCurrencyType : DbcTable
---@field [integer] dbc.row.v1215.RewardPackXCurrencyType
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.RewardPackXCurrencyType
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.RewardPackXCurrencyType|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.RewardPackXCurrencyType
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.RewardPackXCurrencyType>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.RewardPackXCurrencyType[]
function tbl:GetByRelation(foreign_id) end

return {}
