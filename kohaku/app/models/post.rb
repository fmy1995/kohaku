class Post < ApplicationRecord
attachment :image
has_many :post_comments, dependent: :destroy
end
