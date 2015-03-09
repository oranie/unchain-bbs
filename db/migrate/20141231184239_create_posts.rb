class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :sure, index: true, null: false
      t.string :name, null: false, defaults: "nakashii_"
      t.string :content, null: false, defaults: "nakashii_"

      t.timestamps
    end
  end
end
