class Setdefaulttitleforblock < ActiveRecord::Migration
  def change
    change_column :blocks, :title, :string, default: 'Untitled Block'
  end
end
