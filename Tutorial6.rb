def check(decision)   #edge cases method
    if decision == "Save" 
      return true
    elsif decision == "Cancel"
      return true
    else
      return false
    end
  end

def file_save()
    print "enter title :"
    title = gets.chomp.to_str
    print "enter notes :"
    notes = gets.chomp.to_str

    begin
        print "Do you want to Save or Cancel? Type Save or Cancel. \n"
        decision = gets.chomp.to_str.capitalize()
    end until(check(decision))
    
    if decision == "Save"
      File.open("#{title}.txt","w") { |f| f.write "#{notes}" }
      begin
        file_data = File.new("#{title}.txt","r").read
        if file_data
            print file_data
        end
        rescue  
        print "file not found on the screen"
      end
    elsif decision == "Cancel"
        exit()
    end
end
file_save()