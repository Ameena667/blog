class DeleteColFromArticles < ActiveRecord::Migration[7.0]
  def change
    remove_column :articles , :user_mail
  end
end
