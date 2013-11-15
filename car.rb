class Car
	@@mpg = 20

	def get_info
		"I'm a car that has driven #{@position} miles and I currently have #{@fuel} gallons of gas"
	end

	def initialize
		@fuel = 10
		@position = 0
		return
	end
	
	def drive(miles)
		if @position + miles >= 200
			"Sorry, you need to fill up first! Use the fuel_up method"
		else
			@fuel -= miles/@@mpg
			@position += miles
			puts "We just drove #{miles} miles. We've now travelled #{@position} miles and have #{@fuel} gallons left."	
		end
	end

	def fuel_up
		amount = 10 - @fuel
		@fuel = 10
		"Gas cost $3.50/gallon. To fill up we spent $"+ (3.50*amount).to_s
	end
end
