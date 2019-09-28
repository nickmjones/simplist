class AddUuidToList < ActiveRecord::Migration[6.0]
  def change
    add_column :lists, :listuuid, :string
  end
end
