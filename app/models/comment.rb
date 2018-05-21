class Comment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :cat, optional: true
end
