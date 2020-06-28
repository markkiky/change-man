class Type < ApplicationRecord
    has_many :change_types, class_name: "ChangeType", foreign_key: 'type_id'
    has_many :change_impacts, through: :change_types  
end
