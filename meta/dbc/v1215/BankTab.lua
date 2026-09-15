---@meta
-- Generated LuaLS annotations for BankTab (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of BankTab in build 12.1.5.69594.
---@class dbc.row.v1215.BankTab : RowProxy
---@field ID integer
---@field Cost integer
---@field BankType integer 0 = Character, 1 = Guild, 2 = Account
---@field OrderIndex integer
---@field PlayerConditionID integer
---@field PurchasePromptTitle integer
---@field PurchasePromptBody integer
---@field PurchasePromptConfirmation integer
---@field TabCleanupConfirmation integer
---@field TabNameEditBoxHeader integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.BankTab self
function row:SetID(value) end

---Gets the value of field 'Cost'.
---@return integer value
function row:GetCost() end

---Sets the value of field 'Cost'.
---@param value integer
---@return dbc.row.v1215.BankTab self
function row:SetCost(value) end

---Gets the value of field 'BankType'.
---@return integer value
function row:GetBankType() end

---Sets the value of field 'BankType'.
---@param value integer
---@return dbc.row.v1215.BankTab self
function row:SetBankType(value) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.BankTab self
function row:SetOrderIndex(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.BankTab self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'PurchasePromptTitle'.
---@return integer value
function row:GetPurchasePromptTitle() end

---Sets the value of field 'PurchasePromptTitle'.
---@param value integer
---@return dbc.row.v1215.BankTab self
function row:SetPurchasePromptTitle(value) end

---Navigates foreign relationship to 'SharedString' via 'PurchasePromptTitle'.
---@return dbc.row.v1215.SharedString|nil
function row:GetPurchasePromptTitle() end

---Creates a related 'SharedString' row and automatically links 'PurchasePromptTitle'.
---@param data? table
---@return dbc.row.v1215.SharedString
function row:CreateRelated(data) end

---Gets the value of field 'PurchasePromptBody'.
---@return integer value
function row:GetPurchasePromptBody() end

---Sets the value of field 'PurchasePromptBody'.
---@param value integer
---@return dbc.row.v1215.BankTab self
function row:SetPurchasePromptBody(value) end

---Navigates foreign relationship to 'SharedString' via 'PurchasePromptBody'.
---@return dbc.row.v1215.SharedString|nil
function row:GetPurchasePromptBody() end

---Creates a related 'SharedString' row and automatically links 'PurchasePromptBody'.
---@param data? table
---@return dbc.row.v1215.SharedString
function row:CreateRelated(data) end

---Gets the value of field 'PurchasePromptConfirmation'.
---@return integer value
function row:GetPurchasePromptConfirmation() end

---Sets the value of field 'PurchasePromptConfirmation'.
---@param value integer
---@return dbc.row.v1215.BankTab self
function row:SetPurchasePromptConfirmation(value) end

---Navigates foreign relationship to 'SharedString' via 'PurchasePromptConfirmation'.
---@return dbc.row.v1215.SharedString|nil
function row:GetPurchasePromptConfirmation() end

---Creates a related 'SharedString' row and automatically links 'PurchasePromptConfirmation'.
---@param data? table
---@return dbc.row.v1215.SharedString
function row:CreateRelated(data) end

---Gets the value of field 'TabCleanupConfirmation'.
---@return integer value
function row:GetTabCleanupConfirmation() end

---Sets the value of field 'TabCleanupConfirmation'.
---@param value integer
---@return dbc.row.v1215.BankTab self
function row:SetTabCleanupConfirmation(value) end

---Navigates foreign relationship to 'SharedString' via 'TabCleanupConfirmation'.
---@return dbc.row.v1215.SharedString|nil
function row:GetTabCleanupConfirmation() end

---Creates a related 'SharedString' row and automatically links 'TabCleanupConfirmation'.
---@param data? table
---@return dbc.row.v1215.SharedString
function row:CreateRelated(data) end

---Gets the value of field 'TabNameEditBoxHeader'.
---@return integer value
function row:GetTabNameEditBoxHeader() end

---Sets the value of field 'TabNameEditBoxHeader'.
---@param value integer
---@return dbc.row.v1215.BankTab self
function row:SetTabNameEditBoxHeader(value) end

---Navigates foreign relationship to 'SharedString' via 'TabNameEditBoxHeader'.
---@return dbc.row.v1215.SharedString|nil
function row:GetTabNameEditBoxHeader() end

---Creates a related 'SharedString' row and automatically links 'TabNameEditBoxHeader'.
---@param data? table
---@return dbc.row.v1215.SharedString
function row:CreateRelated(data) end

---Table container for BankTab (Build 12.1.5.69594).
---@class dbc.Table.v1215.BankTab : DbcTable
---@field [integer] dbc.row.v1215.BankTab
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.BankTab
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.BankTab|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.BankTab
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.BankTab>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.BankTab[]
function tbl:GetByRelation(foreign_id) end

return {}
