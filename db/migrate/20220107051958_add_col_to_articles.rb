class AddColToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles , :user_mail , :string
  end
end
