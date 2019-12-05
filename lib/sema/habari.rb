module Sema
  class Habari
  	def initialize(tuma_salamu)
  		@tuma_salamu = "Habari Dunia"
  	end

    def salamu
      puts "#{@tuma_salamu}"
    end
  end

  class Salimia
  	def initialize(julia_hali)
  		@julia_hali = "Mnaendelea Aje?"
  	end
  	
  	def uliza_hali
  		puts "#{@julia_hali}"
  	end
  end
end

puts "This is 'Hello World' in Swahili meaning; Hello world, How are you doing?"
salamu_kwa_dunia = Sema::Habari.new("")
salamu_kwa_dunia.salamu

julia_dunia_hali = Sema::Salimia.new("")
julia_dunia_hali.uliza_hali
