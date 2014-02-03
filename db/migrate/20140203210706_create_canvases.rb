class CreateCanvases < ActiveRecord::Migration
  def change
    create_table :canvases do |t|
      t.string :title

      t.timestamps
    end
  end
end
