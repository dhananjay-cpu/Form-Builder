class Form < ApplicationRecord
    has_many :headers, dependent: :destroy
    accepts_nested_attributes_for :headers

    has_many :buttons, dependent: :destroy
    accepts_nested_attributes_for :buttons

    has_many :emails, dependent: :destroy
    accepts_nested_attributes_for :emails

    has_many :inputtexts, dependent: :destroy
    accepts_nested_attributes_for :inputtexts

    has_many :phones, dependent: :destroy
    accepts_nested_attributes_for :phones

    has_many :addresses, dependent: :destroy
    accepts_nested_attributes_for :addresses

    def self.generate_form_id
        SecureRnadom.hex(16)
    end
end
