---@meta
-- Generated LuaLS annotations for ResearchBranch (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ResearchBranch in build 12.1.5.69594.
---@class dbc.row.v1215.ResearchBranch : RowProxy
---@field ID integer
---@field Name_lang string
---@field ResearchFieldID integer
---@field CurrencyID integer
---@field TextureFileID integer
---@field BigTextureFileID integer
---@field ItemID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ResearchBranch self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.ResearchBranch self
function row:SetName_lang(value) end

---Gets the value of field 'ResearchFieldID'.
---@return integer value
function row:GetResearchFieldID() end

---Sets the value of field 'ResearchFieldID'.
---@param value integer
---@return dbc.row.v1215.ResearchBranch self
function row:SetResearchFieldID(value) end

---Navigates foreign relationship to 'ResearchField' via 'ResearchFieldID'.
---@return dbc.row.v1215.ResearchField|nil
function row:GetResearchField() end

---Creates a related 'ResearchField' row and automatically links 'ResearchFieldID'.
---@param data? table
---@return dbc.row.v1215.ResearchField
function row:CreateRelated(data) end

---Gets the value of field 'CurrencyID'.
---@return integer value
function row:GetCurrencyID() end

---Sets the value of field 'CurrencyID'.
---@param value integer
---@return dbc.row.v1215.ResearchBranch self
function row:SetCurrencyID(value) end

---Navigates foreign relationship to 'CurrencyTypes' via 'CurrencyID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetCurrency() end

---Creates a related 'CurrencyTypes' row and automatically links 'CurrencyID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Gets the value of field 'TextureFileID'.
---@return integer value
function row:GetTextureFileID() end

---Sets the value of field 'TextureFileID'.
---@param value integer
---@return dbc.row.v1215.ResearchBranch self
function row:SetTextureFileID(value) end

---Navigates foreign relationship to 'FileData' via 'TextureFileID'.
---@return dbc.row.v1215.FileData|nil
function row:GetTextureFile() end

---Creates a related 'FileData' row and automatically links 'TextureFileID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'BigTextureFileID'.
---@return integer value
function row:GetBigTextureFileID() end

---Sets the value of field 'BigTextureFileID'.
---@param value integer
---@return dbc.row.v1215.ResearchBranch self
function row:SetBigTextureFileID(value) end

---Navigates foreign relationship to 'FileData' via 'BigTextureFileID'.
---@return dbc.row.v1215.FileData|nil
function row:GetBigTextureFile() end

---Creates a related 'FileData' row and automatically links 'BigTextureFileID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v1215.ResearchBranch self
function row:SetItemID(value) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Table container for ResearchBranch (Build 12.1.5.69594).
---@class dbc.Table.v1215.ResearchBranch : DbcTable
---@field [integer] dbc.row.v1215.ResearchBranch
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ResearchBranch
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ResearchBranch|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ResearchBranch
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ResearchBranch>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ResearchBranch[]
function tbl:GetByRelation(foreign_id) end

return {}
