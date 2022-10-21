class AddCategoryToTherapist < ActiveRecord::Migration[6.1]
  def change
    add_reference :therapists, :category, null: false, foreign_key: true
  end
end
