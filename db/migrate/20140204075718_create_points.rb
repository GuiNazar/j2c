class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.text :content
      t.references :block, index: true

      t.timestamps
    end
  end
end
