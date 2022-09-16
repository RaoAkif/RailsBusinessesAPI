class CreateBusinesses < ActiveRecord::Migration[7.0]
  def change
    create_table :businesses do |t|
      t.integer :match_confidence
      t.boolean :is_matched
      t.string :addresses
      t.string :phone_numbers
      t.string :websites
      t.string :year_incorporated

      t.timestamps
    end
  end
end
