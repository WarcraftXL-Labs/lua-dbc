---@meta
-- Generated LuaLS annotations for MarketingPromotionsXLocale (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of MarketingPromotionsXLocale in build 12.1.5.69594.
---@class dbc.row.v1215.MarketingPromotionsXLocale : RowProxy
---@field ID integer
---@field AcceptURL string
---@field PromotionID integer
---@field LocaleID integer
---@field AdTexture integer
---@field LogoTexture integer
---@field AcceptButtonTexture integer
---@field DeclineButtonTexture integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.MarketingPromotionsXLocale self
function row:SetID(value) end

---Gets the value of field 'AcceptURL'.
---@return string value
function row:GetAcceptURL() end

---Sets the value of field 'AcceptURL'.
---@param value string
---@return dbc.row.v1215.MarketingPromotionsXLocale self
function row:SetAcceptURL(value) end

---Gets the value of field 'PromotionID'.
---@return integer value
function row:GetPromotionID() end

---Sets the value of field 'PromotionID'.
---@param value integer
---@return dbc.row.v1215.MarketingPromotionsXLocale self
function row:SetPromotionID(value) end

---Navigates foreign relationship to 'Promotion' via 'PromotionID'.
---@return dbc.row.v1215.Promotion|nil
function row:GetPromotion() end

---Creates a related 'Promotion' row and automatically links 'PromotionID'.
---@param data? table
---@return dbc.row.v1215.Promotion
function row:CreateRelated(data) end

---Gets the value of field 'LocaleID'.
---@return integer value
function row:GetLocaleID() end

---Sets the value of field 'LocaleID'.
---@param value integer
---@return dbc.row.v1215.MarketingPromotionsXLocale self
function row:SetLocaleID(value) end

---Navigates foreign relationship to 'Locale' via 'LocaleID'.
---@return dbc.row.v1215.Locale|nil
function row:GetLocale() end

---Creates a related 'Locale' row and automatically links 'LocaleID'.
---@param data? table
---@return dbc.row.v1215.Locale
function row:CreateRelated(data) end

---Gets the value of field 'AdTexture'.
---@return integer value
function row:GetAdTexture() end

---Sets the value of field 'AdTexture'.
---@param value integer
---@return dbc.row.v1215.MarketingPromotionsXLocale self
function row:SetAdTexture(value) end

---Gets the value of field 'LogoTexture'.
---@return integer value
function row:GetLogoTexture() end

---Sets the value of field 'LogoTexture'.
---@param value integer
---@return dbc.row.v1215.MarketingPromotionsXLocale self
function row:SetLogoTexture(value) end

---Gets the value of field 'AcceptButtonTexture'.
---@return integer value
function row:GetAcceptButtonTexture() end

---Sets the value of field 'AcceptButtonTexture'.
---@param value integer
---@return dbc.row.v1215.MarketingPromotionsXLocale self
function row:SetAcceptButtonTexture(value) end

---Gets the value of field 'DeclineButtonTexture'.
---@return integer value
function row:GetDeclineButtonTexture() end

---Sets the value of field 'DeclineButtonTexture'.
---@param value integer
---@return dbc.row.v1215.MarketingPromotionsXLocale self
function row:SetDeclineButtonTexture(value) end

---Table container for MarketingPromotionsXLocale (Build 12.1.5.69594).
---@class dbc.Table.v1215.MarketingPromotionsXLocale : DbcTable
---@field [integer] dbc.row.v1215.MarketingPromotionsXLocale
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.MarketingPromotionsXLocale
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.MarketingPromotionsXLocale|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.MarketingPromotionsXLocale
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.MarketingPromotionsXLocale>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.MarketingPromotionsXLocale[]
function tbl:GetByRelation(foreign_id) end

return {}
