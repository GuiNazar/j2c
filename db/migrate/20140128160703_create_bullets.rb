class CreateBullets < ActiveRecord::Migration
  def change
    create_table :bullets do |t|
      t.string :text
      t.references :subject, index: true

      t.timestamps
    end
  end
end
