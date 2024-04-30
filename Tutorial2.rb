def cal_age(bd)
    nowTime = Time.now
    diff = nowTime.year - bd.year
    if(diff < 19)
        print "Child"
    else
        print "Adult"
    end
end

print "Enter your birthdate - "
bd = gets.chomp.to_str
birthDate = Date.parse bd
cal_age(birthDate)
