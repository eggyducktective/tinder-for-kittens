class Photo < ApplicationRecord
  belongs_to :cat, optional: true
end
