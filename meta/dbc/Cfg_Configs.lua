---@meta
-- Generated LuaLS annotations for Cfg_Configs.dbc. Do not edit.

---Row representation of Cfg_Configs.dbc.
---@class dbc.row.Cfg_Configs : RowProxy
---@field Id integer
---@field RealmType integer
---@field PlayerKillingAllowed integer
---@field Roleplaying integer

-- Fluent PascalCase Methods for Cfg_Configs
---@field GetId fun(self: dbc.row.Cfg_Configs): integer
---@field SetId fun(self: dbc.row.Cfg_Configs, value: integer): dbc.row.Cfg_Configs
---@field GetRealmType fun(self: dbc.row.Cfg_Configs): integer
---@field SetRealmType fun(self: dbc.row.Cfg_Configs, value: integer): dbc.row.Cfg_Configs
---@field GetPlayerKillingAllowed fun(self: dbc.row.Cfg_Configs): integer
---@field SetPlayerKillingAllowed fun(self: dbc.row.Cfg_Configs, value: integer): dbc.row.Cfg_Configs
---@field GetRoleplaying fun(self: dbc.row.Cfg_Configs): integer
---@field SetRoleplaying fun(self: dbc.row.Cfg_Configs, value: integer): dbc.row.Cfg_Configs

-- Inferred Cross-Table Relations for Cfg_Configs

-- Cascading Creation & Relations Engine for Cfg_Configs
---@field CreateRelated fun(self: dbc.row.Cfg_Configs, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.Cfg_Configs, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.Cfg_Configs, child_table: string, child_field?: string): any[]

---Typed table handle for Cfg_Configs.dbc.
---@class dbc.Table.Cfg_Configs : DbcTable
---@field FindById fun(self: dbc.Table.Cfg_Configs, id: integer): dbc.row.Cfg_Configs|nil
---@field GetById fun(self: dbc.Table.Cfg_Configs, id: integer): dbc.row.Cfg_Configs|nil
---@field GetRow fun(self: dbc.Table.Cfg_Configs, row: integer): dbc.row.Cfg_Configs
---@field NewRow fun(self: dbc.Table.Cfg_Configs, id?: integer): dbc.row.Cfg_Configs
---@field Create fun(self: dbc.Table.Cfg_Configs, id?: integer): dbc.row.Cfg_Configs
---@field CreateNext fun(self: dbc.Table.Cfg_Configs, data?: table): dbc.row.Cfg_Configs
---@field CloneRow fun(self: dbc.Table.Cfg_Configs, source: integer|dbc.row.Cfg_Configs, new_id?: integer): dbc.row.Cfg_Configs
---@field GetAllRows fun(self: dbc.Table.Cfg_Configs): dbc.row.Cfg_Configs[]
---@field Query fun(self: dbc.Table.Cfg_Configs): dbc.Query<dbc.row.Cfg_Configs>
---@field Rows fun(self: dbc.Table.Cfg_Configs): fun(): integer, dbc.row.Cfg_Configs
