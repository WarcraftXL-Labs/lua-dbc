---@meta
-- Generated LuaLS annotations for GossipNPCOption (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GossipNPCOption in build 12.1.5.69594.
---@class dbc.row.v1215.GossipNPCOption : RowProxy
---@field ID integer
---@field GossipNpcOption integer GossipConstants.GossipNpcOption
---@field LFGDungeonsID integer {3x Vendor, manyx LFGDungeon, somex QueueScenario}
---@field TrainerID integer serverside Trainer id
---@field GarrFollowerTypeID integer
---@field CharShipmentID integer {1x Vendor, 1x Stablemaster, manyx ShipmentCrafter}
---@field GarrTalentTreeID integer {1x TraitSystem, manyx GarrisonTalent}
---@field UiMapID integer {1x WorldMap, manyx AdventureMap}
---@field UiItemInteractionID integer {1x Vendor, manyx UIItemInteraction}
---@field Field_10_0_0_45141_008 integer {1x Soulbind}
---@field Field_10_0_0_45141_009 integer never
---@field CovenantID integer {4x unknown 53, manyx CovenantPreviewNpc}
---@field GossipIndex integer probably the fk
---@field TraitTreeID integer {2x TraitSystem}
---@field ProfessionID integer {1x ProfessionsCraftingOrder, 1x ProfessionsOpen, 1x ProfessionsCustomerOrder}
---@field Field_10_0_2_46144_014 integer
---@field NeighborhoodMapID integer
---@field SkillLineID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GossipNPCOption self
function row:SetID(value) end

---Gets the value of field 'GossipNpcOption'.
---@return integer value
function row:GetGossipNpcOption() end

---Sets the value of field 'GossipNpcOption'.
---@param value integer
---@return dbc.row.v1215.GossipNPCOption self
function row:SetGossipNpcOption(value) end

---Gets the value of field 'LFGDungeonsID'.
---@return integer value
function row:GetLFGDungeonsID() end

---Sets the value of field 'LFGDungeonsID'.
---@param value integer
---@return dbc.row.v1215.GossipNPCOption self
function row:SetLFGDungeonsID(value) end

---Navigates foreign relationship to 'LFGDungeons' via 'LFGDungeonsID'.
---@return dbc.row.v1215.LFGDungeons|nil
function row:GetLFGDungeons() end

---Creates a related 'LFGDungeons' row and automatically links 'LFGDungeonsID'.
---@param data? table
---@return dbc.row.v1215.LFGDungeons
function row:CreateRelated(data) end

---Gets the value of field 'TrainerID'.
---@return integer value
function row:GetTrainerID() end

---Sets the value of field 'TrainerID'.
---@param value integer
---@return dbc.row.v1215.GossipNPCOption self
function row:SetTrainerID(value) end

---Navigates foreign relationship to 'Trainer' via 'TrainerID'.
---@return dbc.row.v1215.Trainer|nil
function row:GetTrainer() end

---Creates a related 'Trainer' row and automatically links 'TrainerID'.
---@param data? table
---@return dbc.row.v1215.Trainer
function row:CreateRelated(data) end

---Gets the value of field 'GarrFollowerTypeID'.
---@return integer value
function row:GetGarrFollowerTypeID() end

---Sets the value of field 'GarrFollowerTypeID'.
---@param value integer
---@return dbc.row.v1215.GossipNPCOption self
function row:SetGarrFollowerTypeID(value) end

---Navigates foreign relationship to 'GarrFollowerType' via 'GarrFollowerTypeID'.
---@return dbc.row.v1215.GarrFollowerType|nil
function row:GetGarrFollowerType() end

---Creates a related 'GarrFollowerType' row and automatically links 'GarrFollowerTypeID'.
---@param data? table
---@return dbc.row.v1215.GarrFollowerType
function row:CreateRelated(data) end

---Gets the value of field 'CharShipmentID'.
---@return integer value
function row:GetCharShipmentID() end

---Sets the value of field 'CharShipmentID'.
---@param value integer
---@return dbc.row.v1215.GossipNPCOption self
function row:SetCharShipmentID(value) end

---Navigates foreign relationship to 'CharShipment' via 'CharShipmentID'.
---@return dbc.row.v1215.CharShipment|nil
function row:GetCharShipment() end

---Creates a related 'CharShipment' row and automatically links 'CharShipmentID'.
---@param data? table
---@return dbc.row.v1215.CharShipment
function row:CreateRelated(data) end

---Gets the value of field 'GarrTalentTreeID'.
---@return integer value
function row:GetGarrTalentTreeID() end

---Sets the value of field 'GarrTalentTreeID'.
---@param value integer
---@return dbc.row.v1215.GossipNPCOption self
function row:SetGarrTalentTreeID(value) end

---Navigates foreign relationship to 'GarrTalentTree' via 'GarrTalentTreeID'.
---@return dbc.row.v1215.GarrTalentTree|nil
function row:GetGarrTalentTree() end

---Creates a related 'GarrTalentTree' row and automatically links 'GarrTalentTreeID'.
---@param data? table
---@return dbc.row.v1215.GarrTalentTree
function row:CreateRelated(data) end

---Gets the value of field 'UiMapID'.
---@return integer value
function row:GetUiMapID() end

---Sets the value of field 'UiMapID'.
---@param value integer
---@return dbc.row.v1215.GossipNPCOption self
function row:SetUiMapID(value) end

---Navigates foreign relationship to 'UiMap' via 'UiMapID'.
---@return dbc.row.v1215.UiMap|nil
function row:GetUiMap() end

---Creates a related 'UiMap' row and automatically links 'UiMapID'.
---@param data? table
---@return dbc.row.v1215.UiMap
function row:CreateRelated(data) end

---Gets the value of field 'UiItemInteractionID'.
---@return integer value
function row:GetUiItemInteractionID() end

---Sets the value of field 'UiItemInteractionID'.
---@param value integer
---@return dbc.row.v1215.GossipNPCOption self
function row:SetUiItemInteractionID(value) end

---Navigates foreign relationship to 'UiItemInteraction' via 'UiItemInteractionID'.
---@return dbc.row.v1215.UiItemInteraction|nil
function row:GetUiItemInteraction() end

---Creates a related 'UiItemInteraction' row and automatically links 'UiItemInteractionID'.
---@param data? table
---@return dbc.row.v1215.UiItemInteraction
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_0_0_45141_008'.
---@return integer value
function row:GetField_10_0_0_45141_008() end

---Sets the value of field 'Field_10_0_0_45141_008'.
---@param value integer
---@return dbc.row.v1215.GossipNPCOption self
function row:SetField_10_0_0_45141_008(value) end

---Gets the value of field 'Field_10_0_0_45141_009'.
---@return integer value
function row:GetField_10_0_0_45141_009() end

---Sets the value of field 'Field_10_0_0_45141_009'.
---@param value integer
---@return dbc.row.v1215.GossipNPCOption self
function row:SetField_10_0_0_45141_009(value) end

---Gets the value of field 'CovenantID'.
---@return integer value
function row:GetCovenantID() end

---Sets the value of field 'CovenantID'.
---@param value integer
---@return dbc.row.v1215.GossipNPCOption self
function row:SetCovenantID(value) end

---Navigates foreign relationship to 'Covenant' via 'CovenantID'.
---@return dbc.row.v1215.Covenant|nil
function row:GetCovenant() end

---Creates a related 'Covenant' row and automatically links 'CovenantID'.
---@param data? table
---@return dbc.row.v1215.Covenant
function row:CreateRelated(data) end

---Gets the value of field 'GossipIndex'.
---@return integer value
function row:GetGossipIndex() end

---Sets the value of field 'GossipIndex'.
---@param value integer
---@return dbc.row.v1215.GossipNPCOption self
function row:SetGossipIndex(value) end

---Gets the value of field 'TraitTreeID'.
---@return integer value
function row:GetTraitTreeID() end

---Sets the value of field 'TraitTreeID'.
---@param value integer
---@return dbc.row.v1215.GossipNPCOption self
function row:SetTraitTreeID(value) end

---Navigates foreign relationship to 'TraitTree' via 'TraitTreeID'.
---@return dbc.row.v1215.TraitTree|nil
function row:GetTraitTree() end

---Creates a related 'TraitTree' row and automatically links 'TraitTreeID'.
---@param data? table
---@return dbc.row.v1215.TraitTree
function row:CreateRelated(data) end

---Gets the value of field 'ProfessionID'.
---@return integer value
function row:GetProfessionID() end

---Sets the value of field 'ProfessionID'.
---@param value integer
---@return dbc.row.v1215.GossipNPCOption self
function row:SetProfessionID(value) end

---Navigates foreign relationship to 'Profession' via 'ProfessionID'.
---@return dbc.row.v1215.Profession|nil
function row:GetProfession() end

---Creates a related 'Profession' row and automatically links 'ProfessionID'.
---@param data? table
---@return dbc.row.v1215.Profession
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_0_2_46144_014'.
---@return integer value
function row:GetField_10_0_2_46144_014() end

---Sets the value of field 'Field_10_0_2_46144_014'.
---@param value integer
---@return dbc.row.v1215.GossipNPCOption self
function row:SetField_10_0_2_46144_014(value) end

---Gets the value of field 'NeighborhoodMapID'.
---@return integer value
function row:GetNeighborhoodMapID() end

---Sets the value of field 'NeighborhoodMapID'.
---@param value integer
---@return dbc.row.v1215.GossipNPCOption self
function row:SetNeighborhoodMapID(value) end

---Navigates foreign relationship to 'NeighborhoodMap' via 'NeighborhoodMapID'.
---@return dbc.row.v1215.NeighborhoodMap|nil
function row:GetNeighborhoodMap() end

---Creates a related 'NeighborhoodMap' row and automatically links 'NeighborhoodMapID'.
---@param data? table
---@return dbc.row.v1215.NeighborhoodMap
function row:CreateRelated(data) end

---Gets the value of field 'SkillLineID'.
---@return integer value
function row:GetSkillLineID() end

---Sets the value of field 'SkillLineID'.
---@param value integer
---@return dbc.row.v1215.GossipNPCOption self
function row:SetSkillLineID(value) end

---Navigates foreign relationship to 'SkillLine' via 'SkillLineID'.
---@return dbc.row.v1215.SkillLine|nil
function row:GetSkillLine() end

---Creates a related 'SkillLine' row and automatically links 'SkillLineID'.
---@param data? table
---@return dbc.row.v1215.SkillLine
function row:CreateRelated(data) end

---Table container for GossipNPCOption (Build 12.1.5.69594).
---@class dbc.Table.v1215.GossipNPCOption : DbcTable
---@field [integer] dbc.row.v1215.GossipNPCOption
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GossipNPCOption
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GossipNPCOption|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GossipNPCOption
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GossipNPCOption>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GossipNPCOption[]
function tbl:GetByRelation(foreign_id) end

return {}
