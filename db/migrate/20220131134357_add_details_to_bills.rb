class AddDetailsToBills < ActiveRecord::Migration[7.0]
  def change
    add_column :bills, :month_id, :integer
  end
end
