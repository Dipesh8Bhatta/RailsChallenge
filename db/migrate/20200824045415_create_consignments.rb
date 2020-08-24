class CreateConsignments < ActiveRecord::Migration[6.0]
  def change
    create_table :consignments do |t|
      t.string :type
      t.string :name
      t.string :source
      t.string :destination
      t.string :consignmentID
      t.datetime :entryAt
      t.datetime :exitAt

      t.timestamps
    end
    add_index :consignments, :consignmentID, unique: true
  end
end
