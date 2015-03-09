class AddColumnSures < ActiveRecord::Migration
  def change
    add_column :sures, :post_count, :integer
  end
end
