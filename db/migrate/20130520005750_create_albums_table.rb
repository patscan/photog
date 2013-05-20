class CreateAlbumsTable < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.references :user
      t.string :title
      t.string :title

      t.timestamps
    end
  end
end
