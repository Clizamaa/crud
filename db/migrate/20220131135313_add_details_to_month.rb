class AddDetailsToMonth < ActiveRecord::Migration[7.0]
  def change
    add_column :months, :name, :string
  end
end
