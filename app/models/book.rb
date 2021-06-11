class Book < ApplicationRecord

	validates :name, presence: true

	before_create :check_for_author
	before_save :create_payment
	after_validation :capitalize_name

	has_one :payment
	def create_payment
		Payment.create(book: self, name: "hgh") if payment.nil?
	end

	def check_for_author
		self.author = name if author.blank?
	end
	def capitalize_name
		self.name = name.capitalize
	end

end
