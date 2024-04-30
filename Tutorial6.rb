def file_save()
    print "enter title :"
    title = gets.chomp.to_str
    print "enter notes :"
    notes = gets.chomp.to_str
    print "Do you want to Save or Cancel? Type save or cancel. \n"
    str = gets.chomp.to_str
    if str == "save"
      File.open("#{title}.txt","w") { |f| f.write "#{notes}" }
      begin
        file_data = File.new("#{title}.txt","r").read
        if file_data
            print file_data
        end
        rescue  
        print "file not found on the screen"
      end
    elsif str == "cancel"
        exit()
    end
end
file_save()