class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :telephone_number
      t.string :status
      t.integer :user_id  # Assuming user_id is a foreign key to link to a User model

      t.timestamps
    end
  end
end
