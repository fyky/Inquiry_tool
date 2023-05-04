class AddStatusIdsToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :status_id, :integer
  end
end
