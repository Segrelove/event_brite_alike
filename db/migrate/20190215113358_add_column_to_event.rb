class AddColumnToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :is_validate, :boolean
  end
end
