require 'types'
require 'restaurants'

def main_menu
  loop do
    puts "For All The Food Lovers Out There \n\n"
    puts "Organize all the best restaurants by type of food! \n\n"
    puts "press 'a' to add a genre of food"
    puts "press 'f' to add a food place into a genre"
    puts "press 'v' to view the types of food and what restaurants are available"
    puts "press 'x' to exit"

    main_choice = gets.chomp.downcase

    if main_choice == 'a'
      add_type
    elsif main_choice == 'f'
      add_food
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
  puts "You created a new food type #{Type.all.last.name}!"
end

def view_food_world
  Type.all.each do |type|
    puts type.name
  end
  puts "What type of food are you in the mood for?"
  input = gets.chomp
  Type.all.each do |type|
    if input == type.name
      type.food.each do |restaurant|
        puts food.restaurant
      end
    end
  end
end

