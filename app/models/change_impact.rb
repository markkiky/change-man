class ChangeImpact < ApplicationRecord
    belongs_to :change_request

    has_many :change_types, class_name: "ChangeType"
    has_many :types, through: :change_types
end