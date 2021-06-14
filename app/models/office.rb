class Office < ApplicationRecord
	after_initialize do |office|
		puts "you have initialized"
	end
	after_find do |office|
		puts "you have found an object"
	end
	after_touch do |office|
		puts "you have touched"
	end

end
