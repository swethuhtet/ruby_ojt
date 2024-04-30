
def check(decision)   #edge cases method
    if decision == "Continue" 
      return true
    elsif decision == "Stop"
      return true
    else
      return false
    end
  end
def cal_num()
    puts "Enter the first number - "
    num1 = gets.chomp.to_i     
    puts "Choose an operator (+,-,*,/) -" 
    op = gets.chomp            #how to restrict to get only operators
    puts "Enter the second number - "
    num2 = gets.chomp.to_i
    result = num1.public_send(op,num2)
    print "Result is #{result}."
    begin
        puts " Do you want to Continue or Stop?"
        cp = gets.chomp.to_str.capitalize()
    end until(check(cp))
    
    if(cp == "Continue")
        cal_num()
    elsif(cp == "Stop")
        exit()
    end 
end
cal_num()
    