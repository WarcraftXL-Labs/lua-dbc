---@meta
-- Generated LuaLS annotations for GMTicketCategory.dbc. Do not edit.

---Row representation of GMTicketCategory.dbc.
---@class dbc.row.GMTicketCategory : RowProxy
---@field ID integer
---@field Category string

-- Fluent PascalCase Methods for GMTicketCategory
---@field GetID fun(self: dbc.row.GMTicketCategory): integer
---@field SetID fun(self: dbc.row.GMTicketCategory, value: integer): dbc.row.GMTicketCategory
---@field GetCategory fun(self: dbc.row.GMTicketCategory, locale?: string|integer): string
---@field SetCategory fun(self: dbc.row.GMTicketCategory, value: string, locale?: string|integer): dbc.row.GMTicketCategory

-- Inferred Cross-Table Relations for GMTicketCategory

-- Cascading Creation & Relations Engine for GMTicketCategory
---@field CreateRelated fun(self: dbc.row.GMTicketCategory, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.GMTicketCategory, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.GMTicketCategory, child_table: string, child_field?: string): any[]

---Typed table handle for GMTicketCategory.dbc.
---@class dbc.Table.GMTicketCategory : DbcTable
---@field FindById fun(self: dbc.Table.GMTicketCategory, id: integer): dbc.row.GMTicketCategory|nil
---@field GetById fun(self: dbc.Table.GMTicketCategory, id: integer): dbc.row.GMTicketCategory|nil
---@field GetRow fun(self: dbc.Table.GMTicketCategory, row: integer): dbc.row.GMTicketCategory
---@field NewRow fun(self: dbc.Table.GMTicketCategory, id?: integer): dbc.row.GMTicketCategory
---@field Create fun(self: dbc.Table.GMTicketCategory, id?: integer): dbc.row.GMTicketCategory
---@field CreateNext fun(self: dbc.Table.GMTicketCategory, data?: table): dbc.row.GMTicketCategory
---@field CloneRow fun(self: dbc.Table.GMTicketCategory, source: integer|dbc.row.GMTicketCategory, new_id?: integer): dbc.row.GMTicketCategory
---@field GetAllRows fun(self: dbc.Table.GMTicketCategory): dbc.row.GMTicketCategory[]
---@field Query fun(self: dbc.Table.GMTicketCategory): dbc.Query<dbc.row.GMTicketCategory>
---@field Rows fun(self: dbc.Table.GMTicketCategory): fun(): integer, dbc.row.GMTicketCategory
