class Student < ApplicationRecord
	validates :student_name, presence: true
	before_save :call_before_save
	after_save :call_after_save
	private
	def call_before_save
		puts "before student is saved"
	end
	def call_after_save
		puts "after student is saved"
	end
end
