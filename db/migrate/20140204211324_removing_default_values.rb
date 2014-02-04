class RemovingDefaultValues < ActiveRecord::Migration
  def change
    change_column :canvases, :title, :string, default: nil
    change_column :blocks, :title, :string, default: nil
  end
end
