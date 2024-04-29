class AddDobToAuthors < ActiveRecord::Migration[7.1]
  def change
    add_column :authors, :dob, :date
  end
end
