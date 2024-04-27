class Author < ApplicationRecord
    validates :name, presence: true
    validates :dob, presence: true
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :phone_number, presence: true, format: { with: /\A01[0-2|5]\d{8}\z/, message: "must be 11 digits starting with 01 and having the third digit as 0, 1, 2, or 5" }

end
