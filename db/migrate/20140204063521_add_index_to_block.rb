class AddIndexToBlock < ActiveRecord::Migration
  def change
    add_column :blocks, :position, :integer
  end
end
