class ChangeType < ApplicationRecord
    belongs_to :types, class_name: "Type", foreign_key: "type_id"
    belongs_to :change_impacts, class_name: "ChangeImpact", foreign_key: "change_impact_id"
end
