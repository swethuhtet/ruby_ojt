def cal_num()
    puts "Enter the first number - "
    num1 = gets.chomp.to_i
    puts "Choose an operator (+,-,*,/) -" 
    op = gets.chomp            #how to restrict to get only operators
    puts "Enter the second number - "
    num2 = gets.chomp.to_i
    result = num1.public_send(op,num2)
    print "Result is #{result}."
    puts " Do you want to continue (type 'c') or stop( type 's')?"
    cp = gets.chomp.to_str
    if(cp == "c")
        cal_num()
    elsif(cp == "s")
        exit()
    end 
end
cal_num()
    