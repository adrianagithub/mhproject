class CreateTherapists < ActiveRecord::Migration[6.1]
  def change
    create_table :therapists do |t|
      t.string :first_name
      t.string :last_name
      t.string :kind
      t.string :phone_number
      t.string :url
      t.string :picture

      t.timestamps
    end
  end
end
