class Article < ApplicationRecord
    belongs_to :user
    #table called users
    #articles table contains user_id
end
