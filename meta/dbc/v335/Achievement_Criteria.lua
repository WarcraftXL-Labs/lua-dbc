---@meta
-- Generated LuaLS annotations for Achievement_Criteria (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of Achievement_Criteria in build 3.3.5.12340.
---@class dbc.row.v335.Achievement_Criteria : RowProxy
---@field ID integer
---@field Achievement_ID integer
---@field Type integer
---@field Asset_ID integer
---@field Quantity integer
---@field Start_event integer
---@field Start_asset integer
---@field Fail_event integer
---@field Fail_asset integer
---@field Description_lang string
---@field Flags integer
---@field Timer_start_event integer
---@field Timer_asset_ID integer
---@field Timer_time integer
---@field Ui_order integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.Achievement_Criteria self
function row:SetID(value) end

---Gets the value of field 'Achievement_ID'.
---@return integer value
function row:GetAchievement_ID() end

---Sets the value of field 'Achievement_ID'.
---@param value integer
---@return dbc.row.v335.Achievement_Criteria self
function row:SetAchievement_ID(value) end

---Navigates foreign relationship to 'Achievement' via 'Achievement_ID'.
---@return dbc.row.v335.Achievement|nil
function row:GetAchievement_() end

---Creates a related 'Achievement' row and automatically links 'Achievement_ID'.
---@param data? table
---@return dbc.row.v335.Achievement
function row:CreateRelated(data) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v335.Achievement_Criteria self
function row:SetType(value) end

---Gets the value of field 'Asset_ID'.
---@return integer value
function row:GetAsset_ID() end

---Sets the value of field 'Asset_ID'.
---@param value integer
---@return dbc.row.v335.Achievement_Criteria self
function row:SetAsset_ID(value) end

---Navigates foreign relationship to 'Asset_' via 'Asset_ID'.
---@return dbc.row.v335.Asset_|nil
function row:GetAsset_() end

---Creates a related 'Asset_' row and automatically links 'Asset_ID'.
---@param data? table
---@return dbc.row.v335.Asset_
function row:CreateRelated(data) end

---Gets the value of field 'Quantity'.
---@return integer value
function row:GetQuantity() end

---Sets the value of field 'Quantity'.
---@param value integer
---@return dbc.row.v335.Achievement_Criteria self
function row:SetQuantity(value) end

---Gets the value of field 'Start_event'.
---@return integer value
function row:GetStart_event() end

---Sets the value of field 'Start_event'.
---@param value integer
---@return dbc.row.v335.Achievement_Criteria self
function row:SetStart_event(value) end

---Gets the value of field 'Start_asset'.
---@return integer value
function row:GetStart_asset() end

---Sets the value of field 'Start_asset'.
---@param value integer
---@return dbc.row.v335.Achievement_Criteria self
function row:SetStart_asset(value) end

---Gets the value of field 'Fail_event'.
---@return integer value
function row:GetFail_event() end

---Sets the value of field 'Fail_event'.
---@param value integer
---@return dbc.row.v335.Achievement_Criteria self
function row:SetFail_event(value) end

---Gets the value of field 'Fail_asset'.
---@return integer value
function row:GetFail_asset() end

---Sets the value of field 'Fail_asset'.
---@param value integer
---@return dbc.row.v335.Achievement_Criteria self
function row:SetFail_asset(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v335.Achievement_Criteria self
function row:SetDescription_lang(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v335.Achievement_Criteria self
function row:SetFlags(value) end

---Gets the value of field 'Timer_start_event'.
---@return integer value
function row:GetTimer_start_event() end

---Sets the value of field 'Timer_start_event'.
---@param value integer
---@return dbc.row.v335.Achievement_Criteria self
function row:SetTimer_start_event(value) end

---Gets the value of field 'Timer_asset_ID'.
---@return integer value
function row:GetTimer_asset_ID() end

---Sets the value of field 'Timer_asset_ID'.
---@param value integer
---@return dbc.row.v335.Achievement_Criteria self
function row:SetTimer_asset_ID(value) end

---Navigates foreign relationship to 'Timer_asset_' via 'Timer_asset_ID'.
---@return dbc.row.v335.Timer_asset_|nil
function row:GetTimer_asset_() end

---Creates a related 'Timer_asset_' row and automatically links 'Timer_asset_ID'.
---@param data? table
---@return dbc.row.v335.Timer_asset_
function row:CreateRelated(data) end

---Gets the value of field 'Timer_time'.
---@return integer value
function row:GetTimer_time() end

---Sets the value of field 'Timer_time'.
---@param value integer
---@return dbc.row.v335.Achievement_Criteria self
function row:SetTimer_time(value) end

---Gets the value of field 'Ui_order'.
---@return integer value
function row:GetUi_order() end

---Sets the value of field 'Ui_order'.
---@param value integer
---@return dbc.row.v335.Achievement_Criteria self
function row:SetUi_order(value) end

---Table container for Achievement_Criteria (Build 3.3.5.12340).
---@class dbc.Table.v335.Achievement_Criteria : DbcTable
---@field [integer] dbc.row.v335.Achievement_Criteria
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.Achievement_Criteria
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.Achievement_Criteria|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.Achievement_Criteria
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.Achievement_Criteria>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.Achievement_Criteria[]
function tbl:GetByRelation(foreign_id) end

return {}
