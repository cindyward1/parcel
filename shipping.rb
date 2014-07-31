require "./lib/parcel"

@packages = []

def main_menu

  loop do
    puts "Press 'a' to add a package and calculate its shipping cost"
    puts "Press 'l' to list the packages in your shipment"
    puts "Press 'x' to exit"
    puts "\n"

    choice = gets.chomp
    if choice == 'a'
      add_parcel
    elsif choice == 'l'
      list_parcel
    elsif choice == 'x'
      puts "Good-bye!"
      puts "\n"
      exit
    else
      puts "Sorry, that wasn't a valid option."
    end
  end

end

def add_parcel

  puts "Please enter the dimensions and weight of your package:"
  puts "What is the length in inches?"
  length = gets.chomp
  puts "What is the width in inches?"
  width = gets.chomp
  puts "What is the height in inches"
  height = gets.chomp
  puts "What is the weight in pounds?"
  weight = gets.chomp
  puts "\n"

  this_parcel = Parcel.new(length, width, height, weight)
  puts "The cost of shipping this parcel will be $#{this_parcel.cost_to_ship}"
  puts "\n"

  @packages << this_parcel

end

def list_parcel

  puts "Here are the packages in your shipment"
  puts "\n"
  total_shipping_cost = 0
  @packages.each do |package|
    puts "Your package is #{package.length} inches long, #{package.width} inches wide, #{package.height} inches high"
    puts "The shipping cost is  $#{(package.cost_to_ship).round(2)}"
    total_shipping_cost += package.cost_to_ship
    puts "\n"
  end
  puts "Your total shipping cost is $#{(total_shipping_cost).round(2)}"
  puts "\n"
end

main_menu

