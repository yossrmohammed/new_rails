class CreateCreators < ActiveRecord::Migration[7.1]
  def change
    create_table :creators do |t|
      t.string :name
      t.date :dob
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
