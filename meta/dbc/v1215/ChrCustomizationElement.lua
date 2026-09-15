---@meta
-- Generated LuaLS annotations for ChrCustomizationElement (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrCustomizationElement in build 12.1.5.69594.
---@class dbc.row.v1215.ChrCustomizationElement : RowProxy
---@field ID integer
---@field ChrCustomizationChoiceID integer
---@field RelatedChrCustomizationChoiceID integer
---@field ChrCustomizationGeosetID integer exclusive with ChrCustomizationSkinnedModelID, ChrCustomizationMaterialID, ChrCustomizationBoneSetID, ChrCustomizationCondModelID: only one of them is non-0 at a time
---@field ChrCustomizationSkinnedModelID integer
---@field ChrCustomizationMaterialID integer
---@field ChrCustomizationBoneSetID integer
---@field ChrCustomizationCondModelID integer
---@field ChrCustomizationDisplayInfoID integer
---@field ChrCustItemGeoModifyID integer
---@field ChrCustomizationVoiceID integer
---@field AnimKitID integer
---@field ParticleColorID integer
---@field ChrCustGeoComponentLinkID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationElement self
function row:SetID(value) end

---Gets the value of field 'ChrCustomizationChoiceID'.
---@return integer value
function row:GetChrCustomizationChoiceID() end

---Sets the value of field 'ChrCustomizationChoiceID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationElement self
function row:SetChrCustomizationChoiceID(value) end

---Navigates foreign relationship to 'ChrCustomizationChoice' via 'ChrCustomizationChoiceID'.
---@return dbc.row.v1215.ChrCustomizationChoice|nil
function row:GetChrCustomizationChoice() end

---Creates a related 'ChrCustomizationChoice' row and automatically links 'ChrCustomizationChoiceID'.
---@param data? table
---@return dbc.row.v1215.ChrCustomizationChoice
function row:CreateRelated(data) end

---Gets the value of field 'RelatedChrCustomizationChoiceID'.
---@return integer value
function row:GetRelatedChrCustomizationChoiceID() end

---Sets the value of field 'RelatedChrCustomizationChoiceID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationElement self
function row:SetRelatedChrCustomizationChoiceID(value) end

---Navigates foreign relationship to 'ChrCustomizationChoice' via 'RelatedChrCustomizationChoiceID'.
---@return dbc.row.v1215.ChrCustomizationChoice|nil
function row:GetRelatedChrCustomizationChoice() end

---Creates a related 'ChrCustomizationChoice' row and automatically links 'RelatedChrCustomizationChoiceID'.
---@param data? table
---@return dbc.row.v1215.ChrCustomizationChoice
function row:CreateRelated(data) end

---Gets the value of field 'ChrCustomizationGeosetID'.
---@return integer value
function row:GetChrCustomizationGeosetID() end

---Sets the value of field 'ChrCustomizationGeosetID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationElement self
function row:SetChrCustomizationGeosetID(value) end

---Navigates foreign relationship to 'ChrCustomizationGeoset' via 'ChrCustomizationGeosetID'.
---@return dbc.row.v1215.ChrCustomizationGeoset|nil
function row:GetChrCustomizationGeoset() end

---Creates a related 'ChrCustomizationGeoset' row and automatically links 'ChrCustomizationGeosetID'.
---@param data? table
---@return dbc.row.v1215.ChrCustomizationGeoset
function row:CreateRelated(data) end

---Gets the value of field 'ChrCustomizationSkinnedModelID'.
---@return integer value
function row:GetChrCustomizationSkinnedModelID() end

---Sets the value of field 'ChrCustomizationSkinnedModelID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationElement self
function row:SetChrCustomizationSkinnedModelID(value) end

---Navigates foreign relationship to 'ChrCustomizationSkinnedModel' via 'ChrCustomizationSkinnedModelID'.
---@return dbc.row.v1215.ChrCustomizationSkinnedModel|nil
function row:GetChrCustomizationSkinnedModel() end

---Creates a related 'ChrCustomizationSkinnedModel' row and automatically links 'ChrCustomizationSkinnedModelID'.
---@param data? table
---@return dbc.row.v1215.ChrCustomizationSkinnedModel
function row:CreateRelated(data) end

---Gets the value of field 'ChrCustomizationMaterialID'.
---@return integer value
function row:GetChrCustomizationMaterialID() end

---Sets the value of field 'ChrCustomizationMaterialID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationElement self
function row:SetChrCustomizationMaterialID(value) end

---Navigates foreign relationship to 'ChrCustomizationMaterial' via 'ChrCustomizationMaterialID'.
---@return dbc.row.v1215.ChrCustomizationMaterial|nil
function row:GetChrCustomizationMaterial() end

---Creates a related 'ChrCustomizationMaterial' row and automatically links 'ChrCustomizationMaterialID'.
---@param data? table
---@return dbc.row.v1215.ChrCustomizationMaterial
function row:CreateRelated(data) end

---Gets the value of field 'ChrCustomizationBoneSetID'.
---@return integer value
function row:GetChrCustomizationBoneSetID() end

---Sets the value of field 'ChrCustomizationBoneSetID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationElement self
function row:SetChrCustomizationBoneSetID(value) end

---Navigates foreign relationship to 'ChrCustomizationBoneSet' via 'ChrCustomizationBoneSetID'.
---@return dbc.row.v1215.ChrCustomizationBoneSet|nil
function row:GetChrCustomizationBoneSet() end

---Creates a related 'ChrCustomizationBoneSet' row and automatically links 'ChrCustomizationBoneSetID'.
---@param data? table
---@return dbc.row.v1215.ChrCustomizationBoneSet
function row:CreateRelated(data) end

---Gets the value of field 'ChrCustomizationCondModelID'.
---@return integer value
function row:GetChrCustomizationCondModelID() end

---Sets the value of field 'ChrCustomizationCondModelID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationElement self
function row:SetChrCustomizationCondModelID(value) end

---Navigates foreign relationship to 'ChrCustomizationCondModel' via 'ChrCustomizationCondModelID'.
---@return dbc.row.v1215.ChrCustomizationCondModel|nil
function row:GetChrCustomizationCondModel() end

---Creates a related 'ChrCustomizationCondModel' row and automatically links 'ChrCustomizationCondModelID'.
---@param data? table
---@return dbc.row.v1215.ChrCustomizationCondModel
function row:CreateRelated(data) end

---Gets the value of field 'ChrCustomizationDisplayInfoID'.
---@return integer value
function row:GetChrCustomizationDisplayInfoID() end

---Sets the value of field 'ChrCustomizationDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationElement self
function row:SetChrCustomizationDisplayInfoID(value) end

---Navigates foreign relationship to 'ChrCustomizationDisplayInfo' via 'ChrCustomizationDisplayInfoID'.
---@return dbc.row.v1215.ChrCustomizationDisplayInfo|nil
function row:GetChrCustomizationDisplayInfo() end

---Creates a related 'ChrCustomizationDisplayInfo' row and automatically links 'ChrCustomizationDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.ChrCustomizationDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'ChrCustItemGeoModifyID'.
---@return integer value
function row:GetChrCustItemGeoModifyID() end

---Sets the value of field 'ChrCustItemGeoModifyID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationElement self
function row:SetChrCustItemGeoModifyID(value) end

---Navigates foreign relationship to 'ChrCustItemGeoModify' via 'ChrCustItemGeoModifyID'.
---@return dbc.row.v1215.ChrCustItemGeoModify|nil
function row:GetChrCustItemGeoModify() end

---Creates a related 'ChrCustItemGeoModify' row and automatically links 'ChrCustItemGeoModifyID'.
---@param data? table
---@return dbc.row.v1215.ChrCustItemGeoModify
function row:CreateRelated(data) end

---Gets the value of field 'ChrCustomizationVoiceID'.
---@return integer value
function row:GetChrCustomizationVoiceID() end

---Sets the value of field 'ChrCustomizationVoiceID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationElement self
function row:SetChrCustomizationVoiceID(value) end

---Navigates foreign relationship to 'ChrCustomizationVoice' via 'ChrCustomizationVoiceID'.
---@return dbc.row.v1215.ChrCustomizationVoice|nil
function row:GetChrCustomizationVoice() end

---Creates a related 'ChrCustomizationVoice' row and automatically links 'ChrCustomizationVoiceID'.
---@param data? table
---@return dbc.row.v1215.ChrCustomizationVoice
function row:CreateRelated(data) end

---Gets the value of field 'AnimKitID'.
---@return integer value
function row:GetAnimKitID() end

---Sets the value of field 'AnimKitID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationElement self
function row:SetAnimKitID(value) end

---Navigates foreign relationship to 'AnimKit' via 'AnimKitID'.
---@return dbc.row.v1215.AnimKit|nil
function row:GetAnimKit() end

---Creates a related 'AnimKit' row and automatically links 'AnimKitID'.
---@param data? table
---@return dbc.row.v1215.AnimKit
function row:CreateRelated(data) end

---Gets the value of field 'ParticleColorID'.
---@return integer value
function row:GetParticleColorID() end

---Sets the value of field 'ParticleColorID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationElement self
function row:SetParticleColorID(value) end

---Navigates foreign relationship to 'ParticleColor' via 'ParticleColorID'.
---@return dbc.row.v1215.ParticleColor|nil
function row:GetParticleColor() end

---Creates a related 'ParticleColor' row and automatically links 'ParticleColorID'.
---@param data? table
---@return dbc.row.v1215.ParticleColor
function row:CreateRelated(data) end

---Gets the value of field 'ChrCustGeoComponentLinkID'.
---@return integer value
function row:GetChrCustGeoComponentLinkID() end

---Sets the value of field 'ChrCustGeoComponentLinkID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationElement self
function row:SetChrCustGeoComponentLinkID(value) end

---Navigates foreign relationship to 'ChrCustGeoComponentLink' via 'ChrCustGeoComponentLinkID'.
---@return dbc.row.v1215.ChrCustGeoComponentLink|nil
function row:GetChrCustGeoComponentLink() end

---Creates a related 'ChrCustGeoComponentLink' row and automatically links 'ChrCustGeoComponentLinkID'.
---@param data? table
---@return dbc.row.v1215.ChrCustGeoComponentLink
function row:CreateRelated(data) end

---Table container for ChrCustomizationElement (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrCustomizationElement : DbcTable
---@field [integer] dbc.row.v1215.ChrCustomizationElement
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrCustomizationElement
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustomizationElement|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustomizationElement
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrCustomizationElement>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrCustomizationElement[]
function tbl:GetByRelation(foreign_id) end

return {}
