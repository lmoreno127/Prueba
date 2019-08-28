class User < ApplicationRecord
    has_one :infoauser,dependent: :destroy
    accepts_nested_attributes_for :infoauser, update_only: true
    validates :email, presence: true
    validates :email, uniqueness: true
    
    
end
