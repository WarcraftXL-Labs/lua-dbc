---@meta
-- Generated LuaLS annotations for UICinematicIntroInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UICinematicIntroInfo in build 12.1.5.69594.
---@class dbc.row.v1215.UICinematicIntroInfo : RowProxy
---@field ID integer
---@field Title_lang string
---@field OrderIndex integer
---@field Expansion integer
---@field Field_11_0_5_56572_003 integer
---@field MovieID integer
---@field ButtonUpAtlasID integer
---@field ButtonDownAtlasID integer
---@field Field_11_0_5_56572_007 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UICinematicIntroInfo self
function row:SetID(value) end

---Gets the value of field 'Title_lang'.
---@return string value
function row:GetTitle_lang() end

---Sets the value of field 'Title_lang'.
---@param value string
---@return dbc.row.v1215.UICinematicIntroInfo self
function row:SetTitle_lang(value) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.UICinematicIntroInfo self
function row:SetOrderIndex(value) end

---Gets the value of field 'Expansion'.
---@return integer value
function row:GetExpansion() end

---Sets the value of field 'Expansion'.
---@param value integer
---@return dbc.row.v1215.UICinematicIntroInfo self
function row:SetExpansion(value) end

---Gets the value of field 'Field_11_0_5_56572_003'.
---@return integer value
function row:GetField_11_0_5_56572_003() end

---Sets the value of field 'Field_11_0_5_56572_003'.
---@param value integer
---@return dbc.row.v1215.UICinematicIntroInfo self
function row:SetField_11_0_5_56572_003(value) end

---Gets the value of field 'MovieID'.
---@return integer value
function row:GetMovieID() end

---Sets the value of field 'MovieID'.
---@param value integer
---@return dbc.row.v1215.UICinematicIntroInfo self
function row:SetMovieID(value) end

---Navigates foreign relationship to 'Movie' via 'MovieID'.
---@return dbc.row.v1215.Movie|nil
function row:GetMovie() end

---Creates a related 'Movie' row and automatically links 'MovieID'.
---@param data? table
---@return dbc.row.v1215.Movie
function row:CreateRelated(data) end

---Gets the value of field 'ButtonUpAtlasID'.
---@return integer value
function row:GetButtonUpAtlasID() end

---Sets the value of field 'ButtonUpAtlasID'.
---@param value integer
---@return dbc.row.v1215.UICinematicIntroInfo self
function row:SetButtonUpAtlasID(value) end

---Navigates foreign relationship to 'UiTextureAtlasMember' via 'ButtonUpAtlasID'.
---@return dbc.row.v1215.UiTextureAtlasMember|nil
function row:GetButtonUpAtlas() end

---Creates a related 'UiTextureAtlasMember' row and automatically links 'ButtonUpAtlasID'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasMember
function row:CreateRelated(data) end

---Gets the value of field 'ButtonDownAtlasID'.
---@return integer value
function row:GetButtonDownAtlasID() end

---Sets the value of field 'ButtonDownAtlasID'.
---@param value integer
---@return dbc.row.v1215.UICinematicIntroInfo self
function row:SetButtonDownAtlasID(value) end

---Navigates foreign relationship to 'UiTextureAtlasMember' via 'ButtonDownAtlasID'.
---@return dbc.row.v1215.UiTextureAtlasMember|nil
function row:GetButtonDownAtlas() end

---Creates a related 'UiTextureAtlasMember' row and automatically links 'ButtonDownAtlasID'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasMember
function row:CreateRelated(data) end

---Gets the value of field 'Field_11_0_5_56572_007'.
---@return integer value
function row:GetField_11_0_5_56572_007() end

---Sets the value of field 'Field_11_0_5_56572_007'.
---@param value integer
---@return dbc.row.v1215.UICinematicIntroInfo self
function row:SetField_11_0_5_56572_007(value) end

---Table container for UICinematicIntroInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.UICinematicIntroInfo : DbcTable
---@field [integer] dbc.row.v1215.UICinematicIntroInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UICinematicIntroInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UICinematicIntroInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UICinematicIntroInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UICinematicIntroInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UICinematicIntroInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
