class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.string :title
      t.string :takeaway
      t.references :canvas, index: true

      t.timestamps
    end
  end
end
