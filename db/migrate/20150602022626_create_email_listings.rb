class CreateEmailListings < ActiveRecord::Migration
  def change
    create_table :email_listings do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
