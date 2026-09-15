---@meta
-- Generated LuaLS annotations for UiWidgetStringSource (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiWidgetStringSource in build 12.1.5.69594.
---@class dbc.row.v1215.UiWidgetStringSource : RowProxy
---@field ID integer
---@field Value_lang string formatting patterns are '%\d+$fun' where $fun defines what is done and the digit is passed to that. funs are case insensitive, unless noted. mostly maps back to the UiWidgetDataSource types, but has some special ones. also has format types: d: integer, s: string, tr: relative time, th: time %h:%m:%s, tm: time %Hh:%m:%s or %m:%s. the following mappings are of form '$fun: $type$fmt' where $type is the equivalent in UiWidgetDataSource::SourceType and $fmt is the type as given above. mappings follow: a1: 12d, a2: 13d, a3: 14d, a4: 52d, a5: 53d, as: 9d, c: 2d, e: 1d, fl: 25d but +1, fm: 27d, fr: 25d, fs: 26d, fx: 28d, ib: 35d, ic: 36d, ji: 45d, jl: 46d, k: 0tr, m: 3d, oc: 19d, om: 20d, or: 34d, qc: 18d, qr: 33d, rc: 47d, rm: 48d, rx: 49d, sc: 42d, sn: 40d, sr: 41d, sz: 43d, t: 4d, u1: 58d, u2: 59d, u3: 60d, u4: 61d, u5: 62d, us: 55d, vn: 38d, vt: 38tm, w: 0d, x: 0th. additional functions all return format s: d: spell description(?), fn: faction standing, n: spell name, p: player condition failure desc, ud: some spell/quest text.
---@field ReqID integer
---@field ParentWidgetID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiWidgetStringSource self
function row:SetID(value) end

---Gets the value of field 'Value_lang'.
---@return string value
function row:GetValue_lang() end

---Sets the value of field 'Value_lang'.
---@param value string
---@return dbc.row.v1215.UiWidgetStringSource self
function row:SetValue_lang(value) end

---Gets the value of field 'ReqID'.
---@return integer value
function row:GetReqID() end

---Sets the value of field 'ReqID'.
---@param value integer
---@return dbc.row.v1215.UiWidgetStringSource self
function row:SetReqID(value) end

---Navigates foreign relationship to 'UiWidgetVisTypeDataReq' via 'ReqID'.
---@return dbc.row.v1215.UiWidgetVisTypeDataReq|nil
function row:GetReq() end

---Creates a related 'UiWidgetVisTypeDataReq' row and automatically links 'ReqID'.
---@param data? table
---@return dbc.row.v1215.UiWidgetVisTypeDataReq
function row:CreateRelated(data) end

---Gets the value of field 'ParentWidgetID'.
---@return integer value
function row:GetParentWidgetID() end

---Sets the value of field 'ParentWidgetID'.
---@param value integer
---@return dbc.row.v1215.UiWidgetStringSource self
function row:SetParentWidgetID(value) end

---Navigates foreign relationship to 'UiWidget' via 'ParentWidgetID'.
---@return dbc.row.v1215.UiWidget|nil
function row:GetParentWidget() end

---Creates a related 'UiWidget' row and automatically links 'ParentWidgetID'.
---@param data? table
---@return dbc.row.v1215.UiWidget
function row:CreateRelated(data) end

---Table container for UiWidgetStringSource (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiWidgetStringSource : DbcTable
---@field [integer] dbc.row.v1215.UiWidgetStringSource
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiWidgetStringSource
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiWidgetStringSource|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiWidgetStringSource
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiWidgetStringSource>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiWidgetStringSource[]
function tbl:GetByRelation(foreign_id) end

return {}
