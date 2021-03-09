# NDS to Insight Strategy
# 1. Understand the NDS
    # 2. "Pretty-Print" NDS with:
      pp
    # 3. Home-Grown Pretty-Print NDS
# 4. Use [] to verify your understanding from Step 1
  # 5. Print values to verify your understanding
  # 6. Leave code comments and documentation for yourself
# 7. Wrap uses of [] from Step 2 into new methods
  # 8. Create simple methods with meaningful names ("First-Order Methods")
  # 9. Ensure "First-Order Methods" use arguments to create flexibility
# 10. See-saw between bottom-up and top-down method writing
  # 11. Write a method that provides an insight e.g. oldest_student
  # 12. Evaluate your First Order Methods
  # 13. Can you use your First-Order Methods to build the insight method's implementation?
  # 14. YES: Great! Your method is done!
  # 15. NO: Build a new method that combines other methods to get closer to what the insight method needs. Repeat step 4
#16. Insight method provides an insight! We're done!

# example
vm = [[[{:name=>"Vanilla Cookies", :price=>3}, {:name=>"Pistachio Cookies", :price=>3}, {:name=>"Chocolate Cookies", :price=>3}, {:name=>"Chocolate Chip Cookies", :price=>3}], [{:name=>"Tooth-Melters", :price=>12}, {:name=>"Tooth-Destroyers", :price=>12}, {:name=>"Enamel Eaters", :price=>12}, {:name=>"Dentist's Nightmare", :price=>20}], [{:name=>"Gummy Sour Apple", :price=>3}, {:name=>"Gummy Apple", :price=>5}, {:name=>"Gummy Moldy Apple", :price=>1}]], [[{:name=>"Grape Drink", :price=>1}, {:name=>"Orange Drink", :price=>1}, {:name=>"Pineapple Drink", :price=>1}], [{:name=>"Mints", :price=>13}, {:name=>"Curiously Toxic Mints", :price=>1000}, {:name=>"US Mints", :price=>99}]]]
 
 
row_index = 0
while row_index < vm.length do
  puts "Row #{row_index} has #{vm[row_index]} columns"
 
  column_index = 0
  while column_index < vm[row_index].length do
    coord = "#{row_index}, #{column_index}"
    inner_len = vm[row_index][column_index].length
    # Remember \t is a TAB character for indentation
    puts "\tCoordinate [#{coord}] points to an #{vm[row_index][column_index].class} of length #{inner_len}"
 
    inner_index = 0
    while inner_index < inner_len do
      puts "\t\t (#{coord}, #{inner_index}) is: #{vm[row_index][column_index][inner_index]}"
      inner_index += 1
    end
 
    column_index += 1
  end
 
  row_index += 1
end
