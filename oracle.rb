class Oracle
  attr_reader :generated_number
   def initialize
     @generated_number = rand(1..100)
   end

    def is_it? (number)
      if number < @generated_number
        puts "\n The number is greater than #{number}, mortal !"
      elsif number > @generated_number
        puts "\n The number is less than #{number}, mortal !"
      else
        puts "\n You won this time, mortal!"
      end
      number == @generated_number
     end
end