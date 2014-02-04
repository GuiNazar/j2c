class AddIndexToBlock < ActiveRecord::Migration
  def change
    add_column :blocks, :index, :integer
  end
end
