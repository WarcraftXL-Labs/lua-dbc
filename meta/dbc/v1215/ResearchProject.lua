---@meta
-- Generated LuaLS annotations for ResearchProject (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ResearchProject in build 12.1.5.69594.
---@class dbc.row.v1215.ResearchProject : RowProxy
---@field ID integer
---@field Name_lang string
---@field Description_lang string
---@field Rarity integer
---@field SpellID integer
---@field ResearchBranchID integer
---@field NumSockets integer
---@field TextureFileID integer
---@field RequiredWeight integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ResearchProject self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.ResearchProject self
function row:SetName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.ResearchProject self
function row:SetDescription_lang(value) end

---Gets the value of field 'Rarity'.
---@return integer value
function row:GetRarity() end

---Sets the value of field 'Rarity'.
---@param value integer
---@return dbc.row.v1215.ResearchProject self
function row:SetRarity(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.ResearchProject self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'ResearchBranchID'.
---@return integer value
function row:GetResearchBranchID() end

---Sets the value of field 'ResearchBranchID'.
---@param value integer
---@return dbc.row.v1215.ResearchProject self
function row:SetResearchBranchID(value) end

---Navigates foreign relationship to 'ResearchBranch' via 'ResearchBranchID'.
---@return dbc.row.v1215.ResearchBranch|nil
function row:GetResearchBranch() end

---Creates a related 'ResearchBranch' row and automatically links 'ResearchBranchID'.
---@param data? table
---@return dbc.row.v1215.ResearchBranch
function row:CreateRelated(data) end

---Gets the value of field 'NumSockets'.
---@return integer value
function row:GetNumSockets() end

---Sets the value of field 'NumSockets'.
---@param value integer
---@return dbc.row.v1215.ResearchProject self
function row:SetNumSockets(value) end

---Gets the value of field 'TextureFileID'.
---@return integer value
function row:GetTextureFileID() end

---Sets the value of field 'TextureFileID'.
---@param value integer
---@return dbc.row.v1215.ResearchProject self
function row:SetTextureFileID(value) end

---Navigates foreign relationship to 'FileData' via 'TextureFileID'.
---@return dbc.row.v1215.FileData|nil
function row:GetTextureFile() end

---Creates a related 'FileData' row and automatically links 'TextureFileID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'RequiredWeight'.
---@return integer value
function row:GetRequiredWeight() end

---Sets the value of field 'RequiredWeight'.
---@param value integer
---@return dbc.row.v1215.ResearchProject self
function row:SetRequiredWeight(value) end

---Table container for ResearchProject (Build 12.1.5.69594).
---@class dbc.Table.v1215.ResearchProject : DbcTable
---@field [integer] dbc.row.v1215.ResearchProject
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ResearchProject
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ResearchProject|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ResearchProject
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ResearchProject>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ResearchProject[]
function tbl:GetByRelation(foreign_id) end

return {}
