class ChangeFieldValueForColorInLists < ActiveRecord::Migration[6.0]
  def change
    change_column :lists, :color, :string
  end
end
