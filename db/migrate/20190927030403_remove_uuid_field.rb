class RemoveUuidField < ActiveRecord::Migration[6.0]
  def change
    remove_column :lists, :listuuid
  end
end
