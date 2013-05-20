class CreatePhotosTable < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :album
      t.string :title
      t.string :caption

      t.timestamps
    end
  end
end