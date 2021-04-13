class Genre < ApplicationRecord

validates :is_active, inclusion: { in: [true, false] }
has_many :posts
end
