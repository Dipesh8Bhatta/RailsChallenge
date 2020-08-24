class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :consignments, :type, :consignment_type
  end
end
