---@meta
-- Generated LuaLS annotations for PaperDollItemFrame.dbc. Do not edit.

---Row representation of PaperDollItemFrame.dbc.
---@class dbc.row.PaperDollItemFrame : RowProxy
---@field ItemButtonName string
---@field SlotIcon string
---@field SlotNumber integer

-- Fluent PascalCase Methods for PaperDollItemFrame
---@field GetItemButtonName fun(self: dbc.row.PaperDollItemFrame): string
---@field SetItemButtonName fun(self: dbc.row.PaperDollItemFrame, value: string): dbc.row.PaperDollItemFrame
---@field GetSlotIcon fun(self: dbc.row.PaperDollItemFrame): string
---@field SetSlotIcon fun(self: dbc.row.PaperDollItemFrame, value: string): dbc.row.PaperDollItemFrame
---@field GetSlotNumber fun(self: dbc.row.PaperDollItemFrame): integer
---@field SetSlotNumber fun(self: dbc.row.PaperDollItemFrame, value: integer): dbc.row.PaperDollItemFrame

-- Inferred Cross-Table Relations for PaperDollItemFrame

-- Cascading Creation & Relations Engine for PaperDollItemFrame
---@field CreateRelated fun(self: dbc.row.PaperDollItemFrame, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.PaperDollItemFrame, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.PaperDollItemFrame, child_table: string, child_field?: string): any[]

---Typed table handle for PaperDollItemFrame.dbc.
---@class dbc.Table.PaperDollItemFrame : DbcTable
---@field FindById fun(self: dbc.Table.PaperDollItemFrame, id: integer): dbc.row.PaperDollItemFrame|nil
---@field GetById fun(self: dbc.Table.PaperDollItemFrame, id: integer): dbc.row.PaperDollItemFrame|nil
---@field GetRow fun(self: dbc.Table.PaperDollItemFrame, row: integer): dbc.row.PaperDollItemFrame
---@field NewRow fun(self: dbc.Table.PaperDollItemFrame, id?: integer): dbc.row.PaperDollItemFrame
---@field Create fun(self: dbc.Table.PaperDollItemFrame, id?: integer): dbc.row.PaperDollItemFrame
---@field CreateNext fun(self: dbc.Table.PaperDollItemFrame, data?: table): dbc.row.PaperDollItemFrame
---@field CloneRow fun(self: dbc.Table.PaperDollItemFrame, source: integer|dbc.row.PaperDollItemFrame, new_id?: integer): dbc.row.PaperDollItemFrame
---@field GetAllRows fun(self: dbc.Table.PaperDollItemFrame): dbc.row.PaperDollItemFrame[]
---@field Query fun(self: dbc.Table.PaperDollItemFrame): dbc.Query<dbc.row.PaperDollItemFrame>
---@field Rows fun(self: dbc.Table.PaperDollItemFrame): fun(): integer, dbc.row.PaperDollItemFrame
