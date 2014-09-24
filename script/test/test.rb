class TestClass
    def reguExp
    test = '"[19344727, 22207712]"'    
    puts test
    test = test.gsub(/[^0-9,]/, "")
    puts test
    test = '[ ]'
    puts test
    test = test.gsub(/[^0-9,]/, "")
    
    if test.to_s.strip.length == 0
      puts "empty"
    end
    
    test2 = '3063788,2395,0.001889747982651034,"[10873585, 11464464, 12137775, 12603834, 12905081, 15126281, 16873963, 19699777, 19774675, 19914339, 21069393, 21092757, 21515512, 24201835]"
'   
    tokens = test2.split(",")
    
    puts test2
    puts tokens.length
    
    for i in 3..(tokens.length-1)
      
      puts tokens[i].gsub(/[^0-9]/, "")
      
    end
    
  end  
end

TestClass.new.reguExp
