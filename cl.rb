@contacts = ["Bob", "Jill", "Sarah"]

def main_menu
  puts "--- Ruby Contact List ---"
  puts "1) Create Contact"
  puts "2) View Contacts"
  puts "3) Edit Contact"
  puts "4) Delete Contact"
  puts "5) Exit"
  input = gets.strip
  case input
    when "1"
      create_contact
    when "2"
      view_contacts
    when "3"
      edit_contact
    when "4"
      delete_contact
    when "5"
      exit
    else 
      puts "Invalid Input. Try again!"
      main_menu
  end
end

def create_contact
  puts "--- Create Contact ---"
  
  puts "First Name"
    
      first_name = gets.strip #this is only displaying as a number, not letters
      @contacts.push(first_name)
  #   puts "Last Name"
  #   gets.strip
  #     first_name = gets.strip
  # puts "Phone Number"
  #   gets.strip
  main_menu
end

def view_contacts
  puts "--- View Contacts ---"
    @contacts.each_with_index do |c, i|
    puts "#{i + 1}) #{c}"
end
puts "Who would you like to contact?"
input = gets.strip.to_i
puts "You have selected #{@contacts[input - 1]}"
# main_menu
end

def edit_contact
  @contacts.each_with_index do |c, i|
    puts "#{i + 1}) #{c}"
  end
    puts "Which contact do you want to edit?"
      input = gets.strip.to_i


  main_menu
end

def delete_contact
  puts "--- Delete Contact ---"
    @contacts.each_with_index do |c, i|
    puts "#{i + 1}) #{c}"
    end
  puts "Which contact do you want to delete?"
    input = gets.strip.to_i
    #  input delete_at(input - 1)
    # Find whatever way to delete input
    puts "You have deleted #{@contacts[input - 1]}"
    @contacts.each_with_index do |c, i|
      puts "#{i + 1}) #{c}"
      end
      main_menu
end

main_menu


# use input for name and then phone. Then use hash to combine them in correct order
# Then add that to your contacts, then push it.