---@meta
-- Generated LuaLS annotations for Holidays (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Holidays in build 12.1.5.69594.
---@class dbc.row.v1215.Holidays : RowProxy
---@field ID integer
---@field Region integer a mask of Cfg_Region's Region_group_mask bits, i.e. 0x001=us, 0x002=kr, 0x004=eu, 0x008=tw, 0x010=cn, 0x020=pv, 0x040=at, 0x080=xx, 0x100=qa, 0x200=some other qa, 0x400=bl
---@field Looping integer
---@field HolidayNameID integer
---@field HolidayDescriptionID integer
---@field Priority integer
---@field CalendarFilterType integer
---@field Flags integer &1: IsRegionwide; &2: DontShowInCalendar; &4: DontDisplayEnd; &8: DontDisplayBanner; &0x10: NotAvailableClientSide
---@field Duration integer[]
---@field Date integer[]
---@field CalendarFlags integer[] 1 = Alliance, 2 = Horde
---@field TextureFileDataID integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Holidays self
function row:SetID(value) end

---Gets the value of field 'Region'.
---@return integer value
function row:GetRegion() end

---Sets the value of field 'Region'.
---@param value integer
---@return dbc.row.v1215.Holidays self
function row:SetRegion(value) end

---Gets the value of field 'Looping'.
---@return integer value
function row:GetLooping() end

---Sets the value of field 'Looping'.
---@param value integer
---@return dbc.row.v1215.Holidays self
function row:SetLooping(value) end

---Gets the value of field 'HolidayNameID'.
---@return integer value
function row:GetHolidayNameID() end

---Sets the value of field 'HolidayNameID'.
---@param value integer
---@return dbc.row.v1215.Holidays self
function row:SetHolidayNameID(value) end

---Navigates foreign relationship to 'HolidayNames' via 'HolidayNameID'.
---@return dbc.row.v1215.HolidayNames|nil
function row:GetHolidayName() end

---Creates a related 'HolidayNames' row and automatically links 'HolidayNameID'.
---@param data? table
---@return dbc.row.v1215.HolidayNames
function row:CreateRelated(data) end

---Gets the value of field 'HolidayDescriptionID'.
---@return integer value
function row:GetHolidayDescriptionID() end

---Sets the value of field 'HolidayDescriptionID'.
---@param value integer
---@return dbc.row.v1215.Holidays self
function row:SetHolidayDescriptionID(value) end

---Navigates foreign relationship to 'HolidayDescriptions' via 'HolidayDescriptionID'.
---@return dbc.row.v1215.HolidayDescriptions|nil
function row:GetHolidayDescription() end

---Creates a related 'HolidayDescriptions' row and automatically links 'HolidayDescriptionID'.
---@param data? table
---@return dbc.row.v1215.HolidayDescriptions
function row:CreateRelated(data) end

---Gets the value of field 'Priority'.
---@return integer value
function row:GetPriority() end

---Sets the value of field 'Priority'.
---@param value integer
---@return dbc.row.v1215.Holidays self
function row:SetPriority(value) end

---Gets the value of field 'CalendarFilterType'.
---@return integer value
function row:GetCalendarFilterType() end

---Sets the value of field 'CalendarFilterType'.
---@param value integer
---@return dbc.row.v1215.Holidays self
function row:SetCalendarFilterType(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.Holidays self
function row:SetFlags(value) end

---Gets the value of field 'Duration'.
---@return integer[] value
function row:GetDuration() end

---Sets the value of field 'Duration'.
---@param value integer[]
---@return dbc.row.v1215.Holidays self
function row:SetDuration(value) end

---Gets element at 1-based index in 'Duration'.
---@param index integer
---@return integer value
function row:GetDurationItem(index) end

---Gets the value of field 'Date'.
---@return integer[] value
function row:GetDate() end

---Sets the value of field 'Date'.
---@param value integer[]
---@return dbc.row.v1215.Holidays self
function row:SetDate(value) end

---Gets element at 1-based index in 'Date'.
---@param index integer
---@return integer value
function row:GetDateItem(index) end

---Gets the value of field 'CalendarFlags'.
---@return integer[] value
function row:GetCalendarFlags() end

---Sets the value of field 'CalendarFlags'.
---@param value integer[]
---@return dbc.row.v1215.Holidays self
function row:SetCalendarFlags(value) end

---Gets element at 1-based index in 'CalendarFlags'.
---@param index integer
---@return integer value
function row:GetCalendarFlagsItem(index) end

---Gets the value of field 'TextureFileDataID'.
---@return integer[] value
function row:GetTextureFileDataID() end

---Sets the value of field 'TextureFileDataID'.
---@param value integer[]
---@return dbc.row.v1215.Holidays self
function row:SetTextureFileDataID(value) end

---Gets element at 1-based index in 'TextureFileDataID'.
---@param index integer
---@return integer value
function row:GetTextureFileDataIDItem(index) end

---Navigates foreign relationship to 'FileData' via 'TextureFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetTextureFileData() end

---Creates a related 'FileData' row and automatically links 'TextureFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Table container for Holidays (Build 12.1.5.69594).
---@class dbc.Table.v1215.Holidays : DbcTable
---@field [integer] dbc.row.v1215.Holidays
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Holidays
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Holidays|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Holidays
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Holidays>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Holidays[]
function tbl:GetByRelation(foreign_id) end

return {}
