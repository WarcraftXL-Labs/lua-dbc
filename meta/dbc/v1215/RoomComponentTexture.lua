---@meta
-- Generated LuaLS annotations for RoomComponentTexture (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of RoomComponentTexture in build 12.1.5.69594.
---@class dbc.row.v1215.RoomComponentTexture : RowProxy
---@field Name_lang string
---@field ID integer
---@field Flags integer
---@field RoomComponentType integer
---@field TextureFileDataID integer
---@field Field_11_2_7_64438_005 integer
---@field HouseThemeID integer

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.RoomComponentTexture self
function row:SetName_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.RoomComponentTexture self
function row:SetID(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.RoomComponentTexture self
function row:SetFlags(value) end

---Gets the value of field 'RoomComponentType'.
---@return integer value
function row:GetRoomComponentType() end

---Sets the value of field 'RoomComponentType'.
---@param value integer
---@return dbc.row.v1215.RoomComponentTexture self
function row:SetRoomComponentType(value) end

---Gets the value of field 'TextureFileDataID'.
---@return integer value
function row:GetTextureFileDataID() end

---Sets the value of field 'TextureFileDataID'.
---@param value integer
---@return dbc.row.v1215.RoomComponentTexture self
function row:SetTextureFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'TextureFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetTextureFileData() end

---Creates a related 'FileData' row and automatically links 'TextureFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Field_11_2_7_64438_005'.
---@return integer value
function row:GetField_11_2_7_64438_005() end

---Sets the value of field 'Field_11_2_7_64438_005'.
---@param value integer
---@return dbc.row.v1215.RoomComponentTexture self
function row:SetField_11_2_7_64438_005(value) end

---Gets the value of field 'HouseThemeID'.
---@return integer value
function row:GetHouseThemeID() end

---Sets the value of field 'HouseThemeID'.
---@param value integer
---@return dbc.row.v1215.RoomComponentTexture self
function row:SetHouseThemeID(value) end

---Navigates foreign relationship to 'HouseTheme' via 'HouseThemeID'.
---@return dbc.row.v1215.HouseTheme|nil
function row:GetHouseTheme() end

---Creates a related 'HouseTheme' row and automatically links 'HouseThemeID'.
---@param data? table
---@return dbc.row.v1215.HouseTheme
function row:CreateRelated(data) end

---Table container for RoomComponentTexture (Build 12.1.5.69594).
---@class dbc.Table.v1215.RoomComponentTexture : DbcTable
---@field [integer] dbc.row.v1215.RoomComponentTexture
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.RoomComponentTexture
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.RoomComponentTexture|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.RoomComponentTexture
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.RoomComponentTexture>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.RoomComponentTexture[]
function tbl:GetByRelation(foreign_id) end

return {}
