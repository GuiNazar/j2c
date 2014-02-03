class AddDefaultValueToCanvasTitle < ActiveRecord::Migration
  def change
    change_column :canvases, :title, :string, default: "Untitled"
  end
end
