class AddPhoneNumberToAuthors < ActiveRecord::Migration[7.1]
  def change
    add_column :authors, :phone_number, :string
  end
end
