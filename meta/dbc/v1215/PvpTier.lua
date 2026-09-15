---@meta
-- Generated LuaLS annotations for PvpTier (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PvpTier in build 12.1.5.69594.
---@class dbc.row.v1215.PvpTier : RowProxy
---@field Name_lang string
---@field ID integer
---@field MinRating integer If below, go to PrevTier
---@field MaxRating integer If above, go to NextTier
---@field PrevTier integer
---@field NextTier integer
---@field BracketID integer 0: 2v2, 1: 3v3, 2: 5v5, 3: RatedBG
---@field Rank integer
---@field RankIcon integer

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.PvpTier self
function row:SetName_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PvpTier self
function row:SetID(value) end

---Gets the value of field 'MinRating'.
---@return integer value
function row:GetMinRating() end

---Sets the value of field 'MinRating'.
---@param value integer
---@return dbc.row.v1215.PvpTier self
function row:SetMinRating(value) end

---Gets the value of field 'MaxRating'.
---@return integer value
function row:GetMaxRating() end

---Sets the value of field 'MaxRating'.
---@param value integer
---@return dbc.row.v1215.PvpTier self
function row:SetMaxRating(value) end

---Gets the value of field 'PrevTier'.
---@return integer value
function row:GetPrevTier() end

---Sets the value of field 'PrevTier'.
---@param value integer
---@return dbc.row.v1215.PvpTier self
function row:SetPrevTier(value) end

---Navigates foreign relationship to 'PvpTier' via 'PrevTier'.
---@return dbc.row.v1215.PvpTier|nil
function row:GetPrevTier() end

---Creates a related 'PvpTier' row and automatically links 'PrevTier'.
---@param data? table
---@return dbc.row.v1215.PvpTier
function row:CreateRelated(data) end

---Gets the value of field 'NextTier'.
---@return integer value
function row:GetNextTier() end

---Sets the value of field 'NextTier'.
---@param value integer
---@return dbc.row.v1215.PvpTier self
function row:SetNextTier(value) end

---Navigates foreign relationship to 'PvpTier' via 'NextTier'.
---@return dbc.row.v1215.PvpTier|nil
function row:GetNextTier() end

---Creates a related 'PvpTier' row and automatically links 'NextTier'.
---@param data? table
---@return dbc.row.v1215.PvpTier
function row:CreateRelated(data) end

---Gets the value of field 'BracketID'.
---@return integer value
function row:GetBracketID() end

---Sets the value of field 'BracketID'.
---@param value integer
---@return dbc.row.v1215.PvpTier self
function row:SetBracketID(value) end

---Navigates foreign relationship to 'PVPBracketTypes' via 'BracketID'.
---@return dbc.row.v1215.PVPBracketTypes|nil
function row:GetBracket() end

---Creates a related 'PVPBracketTypes' row and automatically links 'BracketID'.
---@param data? table
---@return dbc.row.v1215.PVPBracketTypes
function row:CreateRelated(data) end

---Gets the value of field 'Rank'.
---@return integer value
function row:GetRank() end

---Sets the value of field 'Rank'.
---@param value integer
---@return dbc.row.v1215.PvpTier self
function row:SetRank(value) end

---Gets the value of field 'RankIcon'.
---@return integer value
function row:GetRankIcon() end

---Sets the value of field 'RankIcon'.
---@param value integer
---@return dbc.row.v1215.PvpTier self
function row:SetRankIcon(value) end

---Navigates foreign relationship to 'FileData' via 'RankIcon'.
---@return dbc.row.v1215.FileData|nil
function row:GetRankIcon() end

---Creates a related 'FileData' row and automatically links 'RankIcon'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Table container for PvpTier (Build 12.1.5.69594).
---@class dbc.Table.v1215.PvpTier : DbcTable
---@field [integer] dbc.row.v1215.PvpTier
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PvpTier
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PvpTier|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PvpTier
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PvpTier>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PvpTier[]
function tbl:GetByRelation(foreign_id) end

return {}
