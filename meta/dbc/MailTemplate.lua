---@meta
-- Generated LuaLS annotations for MailTemplate.dbc. Do not edit.

---Row representation of MailTemplate.dbc.
---@class dbc.row.MailTemplate : RowProxy
---@field ID integer
---@field Subject string
---@field Body string

-- Fluent PascalCase Methods for MailTemplate
---@field GetID fun(self: dbc.row.MailTemplate): integer
---@field SetID fun(self: dbc.row.MailTemplate, value: integer): dbc.row.MailTemplate
---@field GetSubject fun(self: dbc.row.MailTemplate, locale?: string|integer): string
---@field SetSubject fun(self: dbc.row.MailTemplate, value: string, locale?: string|integer): dbc.row.MailTemplate
---@field GetBody fun(self: dbc.row.MailTemplate, locale?: string|integer): string
---@field SetBody fun(self: dbc.row.MailTemplate, value: string, locale?: string|integer): dbc.row.MailTemplate

-- Inferred Cross-Table Relations for MailTemplate

-- Cascading Creation & Relations Engine for MailTemplate
---@field CreateRelated fun(self: dbc.row.MailTemplate, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.MailTemplate, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.MailTemplate, child_table: string, child_field?: string): any[]

---Typed table handle for MailTemplate.dbc.
---@class dbc.Table.MailTemplate : DbcTable
---@field FindById fun(self: dbc.Table.MailTemplate, id: integer): dbc.row.MailTemplate|nil
---@field GetById fun(self: dbc.Table.MailTemplate, id: integer): dbc.row.MailTemplate|nil
---@field GetRow fun(self: dbc.Table.MailTemplate, row: integer): dbc.row.MailTemplate
---@field NewRow fun(self: dbc.Table.MailTemplate, id?: integer): dbc.row.MailTemplate
---@field Create fun(self: dbc.Table.MailTemplate, id?: integer): dbc.row.MailTemplate
---@field CreateNext fun(self: dbc.Table.MailTemplate, data?: table): dbc.row.MailTemplate
---@field CloneRow fun(self: dbc.Table.MailTemplate, source: integer|dbc.row.MailTemplate, new_id?: integer): dbc.row.MailTemplate
---@field GetAllRows fun(self: dbc.Table.MailTemplate): dbc.row.MailTemplate[]
---@field Query fun(self: dbc.Table.MailTemplate): dbc.Query<dbc.row.MailTemplate>
---@field Rows fun(self: dbc.Table.MailTemplate): fun(): integer, dbc.row.MailTemplate
