require 'pry'
require 'time'
class Event
	attr_accessor :start_date, :duration, :title, :attendees, :user, :age 
	@@all_user = []
	def initialize(date, duration, title, attendees)
		lera = date
		@start_date = Time.parse(lera)
		@duration = duration.to_i
		@title = title
		@attendees = attendees
		@@all_user << "#{@user}"
		return @start_date
	end
 
	def postpon_24h #DECALER UN EVENEMENT
		@start_date = @start_date + (24 * 3600)
	end

	def end_date
		end_event = @start_date + (@duration * 60)
		return end_event
	end

	def is_past?
		if @start_date < Time.now then
			return true
		else
			return false
		end
	end

	def is_future?
		if Time.now < @start_date then
			return true
		else
			return false
		end
	end

	def is_soon?
		time = @start_date - Time.now
		if time < 30 then
			return true
		else 
			return false
		end
	end

	def to_s
		puts "=> Title : #{@title}"
		puts "=> Start date : #{@start_date}"
		puts "=> Duration : #{@duration} minutes"
		puts "=> attendees : #{@attendees}"
	end

	def self.find_by_email(user_email ,age)
		@user = user_email
		@age = age
		
	
     end


    def age_analysis
    age_array = [] #On initialise un array qui va contenir les âges de tous les participants à un évènement
    average = 0 #On initialise une variable pour calculer la moyenne d'âge à l'évènement

    @attendees.each do |attendee| #On parcourt tous les participants (objets de type User)
      age_array << attendee.age #leur âge est stocké dans l'array des âges
      average = average + attendee.age #leur âge est additionné pour préparer le calcul de la moyenne
    end

    average = average / @attendees.length #on divise la somme des âges pour avoir la moyenne

    puts "Voici les âges des participants :"
    puts age_array.join(", ")
    puts "La moyenne d'âge est de #{average} ans"
  end
  			





end
binding.pry
puts "gqkjsdgqkjd"