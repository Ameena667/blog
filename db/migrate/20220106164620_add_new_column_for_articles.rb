class AddNewColumnForArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles , :completed , :boolean
  end
end
