---@meta
-- Generated LuaLS annotations for ItemSubClass (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemSubClass in build 12.1.5.69594.
---@class dbc.row.v1215.ItemSubClass : RowProxy
---@field DisplayName_lang string
---@field VerboseName_lang string
---@field ID integer
---@field ClassID integer
---@field SubClassID integer
---@field AuctionHouseSortOrder integer
---@field PrerequisiteProficiency integer
---@field Flags integer ItemSubclassFlag: &0x001: WeaponsubclassCanparry, &0x002: WeaponsubclassSetfingerseq, &0x004: WeaponsubclassIsunarmed, &0x008: WeaponsubclassIsrifle, &0x010: WeaponsubclassIsthrown, &0x020: WeaponsubclassRighthandRanged, &0x040: ItemsubclassQuivernotrequired, &0x080: WeaponsubclassRanged, &0x100: WeaponsubclassDeprecatedReuseMe, &0x200: ItemsubclassUsesInvtype, &0x400: ArmorsubclassLfgscalingarmor
---@field DisplayFlags integer ItemSubclassDisplay: &0x1: HideSubclassInTooltips; &0x2: HideSubclassInAuction; &0x4: ShowItemCount
---@field WeaponSwingSize integer
---@field PostrequisiteProficiency integer

local row = {}

---Gets the value of field 'DisplayName_lang'.
---@return string value
function row:GetDisplayName_lang() end

---Sets the value of field 'DisplayName_lang'.
---@param value string
---@return dbc.row.v1215.ItemSubClass self
function row:SetDisplayName_lang(value) end

---Gets the value of field 'VerboseName_lang'.
---@return string value
function row:GetVerboseName_lang() end

---Sets the value of field 'VerboseName_lang'.
---@param value string
---@return dbc.row.v1215.ItemSubClass self
function row:SetVerboseName_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemSubClass self
function row:SetID(value) end

---Gets the value of field 'ClassID'.
---@return integer value
function row:GetClassID() end

---Sets the value of field 'ClassID'.
---@param value integer
---@return dbc.row.v1215.ItemSubClass self
function row:SetClassID(value) end

---Navigates foreign relationship to 'ItemClass' via 'ClassID'.
---@return dbc.row.v1215.ItemClass|nil
function row:GetClass() end

---Creates a related 'ItemClass' row and automatically links 'ClassID'.
---@param data? table
---@return dbc.row.v1215.ItemClass
function row:CreateRelated(data) end

---Gets the value of field 'SubClassID'.
---@return integer value
function row:GetSubClassID() end

---Sets the value of field 'SubClassID'.
---@param value integer
---@return dbc.row.v1215.ItemSubClass self
function row:SetSubClassID(value) end

---Navigates foreign relationship to 'SubClass' via 'SubClassID'.
---@return dbc.row.v1215.SubClass|nil
function row:GetSubClass() end

---Creates a related 'SubClass' row and automatically links 'SubClassID'.
---@param data? table
---@return dbc.row.v1215.SubClass
function row:CreateRelated(data) end

---Gets the value of field 'AuctionHouseSortOrder'.
---@return integer value
function row:GetAuctionHouseSortOrder() end

---Sets the value of field 'AuctionHouseSortOrder'.
---@param value integer
---@return dbc.row.v1215.ItemSubClass self
function row:SetAuctionHouseSortOrder(value) end

---Gets the value of field 'PrerequisiteProficiency'.
---@return integer value
function row:GetPrerequisiteProficiency() end

---Sets the value of field 'PrerequisiteProficiency'.
---@param value integer
---@return dbc.row.v1215.ItemSubClass self
function row:SetPrerequisiteProficiency(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ItemSubClass self
function row:SetFlags(value) end

---Gets the value of field 'DisplayFlags'.
---@return integer value
function row:GetDisplayFlags() end

---Sets the value of field 'DisplayFlags'.
---@param value integer
---@return dbc.row.v1215.ItemSubClass self
function row:SetDisplayFlags(value) end

---Gets the value of field 'WeaponSwingSize'.
---@return integer value
function row:GetWeaponSwingSize() end

---Sets the value of field 'WeaponSwingSize'.
---@param value integer
---@return dbc.row.v1215.ItemSubClass self
function row:SetWeaponSwingSize(value) end

---Gets the value of field 'PostrequisiteProficiency'.
---@return integer value
function row:GetPostrequisiteProficiency() end

---Sets the value of field 'PostrequisiteProficiency'.
---@param value integer
---@return dbc.row.v1215.ItemSubClass self
function row:SetPostrequisiteProficiency(value) end

---Table container for ItemSubClass (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemSubClass : DbcTable
---@field [integer] dbc.row.v1215.ItemSubClass
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemSubClass
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemSubClass|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemSubClass
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemSubClass>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemSubClass[]
function tbl:GetByRelation(foreign_id) end

return {}
