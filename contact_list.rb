def main_menu()
  puts "Welcome to Alan's All Season Nursery"
  puts "What would you like to do?"
  puts "1) Add a plant to the invetory."
  puts "2) View all plants."
  puts "3) Delete a plant from the inventory list."
  puts "4) Edit a plant."
  puts "5) exit"

  choice = gets.to_i
  case choice
  when 1
    create_item
  when 2
    view_items(@plant_array)
  when 3
    delete_item
  when 4
    edit_item
  when 5
    exit_menu
  end
end
@plant_array = ['Accolade Elm', 'Alaska cedar', 'American black currant', 'Ango-Japanese yew']

def create_item()
  puts "Add your favorite plant to the list of plants"
  puts "Plant name: "
  plant_name = gets.chomp
  @plant_array << plant_name
end

def view_items(plantz)
  puts "Here are all the plants in the list: "
  plantz.each do |foilage|
    puts "#{foilage}"
  end
end

def delete_item()
  puts "Please enter the name of the plant that you would like to Delete"
  choice = gets.to_s
  @plant_array = @plant_array.reject{|cats| cats == choice}
  puts @plant_array
end

def edit_item

end

def exit_menu()
  puts "Thanks for checking things out, come back again."
  @num = 5
end

while @num != 5
main_menu
end
