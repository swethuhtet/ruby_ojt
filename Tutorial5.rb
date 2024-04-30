require 'date'

def cal_date()
    num = 5
    print "Previous days are "
    for i in 1..num
      prevDays = Date.today.prev_day(i).strftime('%A')
      print "#{prevDays}, "
    end
end
cal_date()