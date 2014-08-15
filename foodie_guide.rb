require './lib/types'
require './lib/restaurants'

def main_menu
  loop do
    puts "\nx"
    puts "For All The Food Lovers Out There!!! \n\n"
    puts "Organize all the best restaurants by their food genre! \n\n"
    puts "press 'a' to add a genre of food"
    puts "press 'f' to add a food place into a genre"
    puts "press 'v' to view the types of food and what restaurants are available"
    puts "press 'x' to exit"

    main_choice = gets.chomp.downcase

    if main_choice == 'a'
      add_type
    elsif main_choice == 'f'
      add_foods
    elsif main_choice == 'v'
      view_food_world
    elsif main_choice == 'x'
      exit
    else
      puts "Validity is what you seek. Try again you must."
    end
  end
end

def add_type
  puts "Enter the type name"
  name = gets.chomp
  puts "\n"
  new_type = Type.new(name).save
  puts "You created a new food type: #{name}!!!"
end

def view_food_world
  puts "What type of food are you in the mood for?"
  input = gets.chomp
  Type.all.each do |type|
    if input == type.type
      Type.all.each do |restaurant|
        puts "Here are some AWESOME places to try:"
        puts restaurant.food
      end
    end
  end
end

def add_foods
  puts "What type of food would you like to add to?"
  response = gets.chomp
  puts "\n"
  Type.all.each do |type|
    if response == type.type
      puts "What restaurant would you like to add to that genre?"
      place = gets.chomp
      type.add_food(place)
      puts "#{place} added"
    end
  end
end

main_menu


