class CreateSures < ActiveRecord::Migration
  def change
    create_table :sures do |t|
      t.string :title, null: false

      t.timestamps
    end
  end
end
