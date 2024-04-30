
rows=6
def print_diamond(rows)
    for i in 1..rows
        print " " * (rows-i)
        puts "*" * (2*i -1) 
    end       
    (rows - 1).downto(1) do |i| #use of downto ???
        print " " * (rows - i)
        puts "*" * (2 * i - 1)
    end
end
print_diamond(rows)
  


  


