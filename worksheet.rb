########################################################
# Step 1: Establish the layers

# In this section of the file, as a series of comments,
# create a list of the layers you identify.
# Which layers are nested in each other?
# Which layers of data "have" within it a different layer?
# Which layers are "next" to each other?

########################################################
# Step 2: Assign a data structure to each layer

# Copy your list from above, and in this section
# determine what data structure each layer should have

########################################################
# Step 3: Make the data structure!

# Setup the entire data structure:
# based off of the notes you have above, create the
# and manually write in data presented in rides.csv
# You should be copying and pasting the literal data
# into this data structure, such as "DR0004"
# and "3rd Feb 2016" and "RD0022"

########################################################
# Step 4: Total Driver's Earnings and Number of Rides

# Use an iteration blocks to print the following answers:
# - the number of rides each driver has given
# - the total amount of money each driver has made
# - the average rating for each driver
# - Which driver made the most money?
# - Which driver has the highest average rating?

rides =
    {
        dr0001: [
            {
                date: "3rd Feb 2016",
                cost: 10,
                rider: "RD0003",
                rating: 3
            },
            {
                date: "3rd Feb 2016",
                cost: 30,
                rider: "RD0015",
                rating: 4
            },
            {
                date: "5th Feb 2016",
                cost: 45,
                rider: "RD0003",
                rating: 2
            }
        ],
        dr0002: [
            {
                date: "3rd Feb 2016",
                cost: 25,
                rider: "RD0073",
                rating: 5
            },
            {
                date: "4th Feb 2016",
                cost: 15,
                rider: "RD0013",
                rating: 1
            },
            {
                date: "5th Feb 2016",
                cost: 35,
                rider: "RD0066",
                rating: 3
            }
        ],
        dr0003: [
            {
                date: "4th Feb 2016",
                cost: 5,
                rider: "RD0066",
                rating: 5
            },
            {
                date: "5th Feb 2016",
                cost: 50,
                rider: "RD0003",
                rating: 2
            }
        ],
        dr0004: [
            {
                date: "3rd Feb 2016",
                cost: 5,
                rider: "RD0022",
                rating: 5
            },
            {
                date: "4th Feb 2016",
                cost: 10,
                rider: "RD0022",
                rating: 4
            },
            {
                date: "5th Feb 2016",
                cost: 20,
                rider: "RD0073",
                rating: 5
            }
        ]
    }

#Iterate through the data structure to display, by printing in terminal, the following info
# The number of rides each driver has given
# count each array
puts "Number of rides each driver has given:"
rides.each do |driver,trips|
  puts "#{driver} has given #{trips.length} rides."
end

puts "______________________________________________________________"
puts "**************************************************************"

#The total amount of money each driver has made
# for each driver loop over the array and give me the cost and add it to sum
# which driver made the most money
# optional: for each driver, on which day did they make the most money?
puts "The total amount of money each driver has made:"
max = 0
max_driver = ""
#date_max_money = ""
 rides.each do |driver,trips|
   sum = 0
   puts "#{driver} earnings:"
   trips.each do | trip |
     puts "$#{trip[:cost].to_f}"
     sum +=  trip[:cost].to_f
     if sum > max
       max = sum
       max_driver = driver
     end
   end
   puts "Total earnings: $#{sum}."
 end
puts "#{max_driver} made the most money in the amount of $#{max} dollars."

puts "______________________________________________________________"
puts "**************************************************************"


#The average rating for each driver
# average = sum of terms / number of terms
#Which driver has the highest average rating?
puts "The average rating for each driver:"
highest_average = 0
driver_highest_avg = ""
rides.each do |driver,trips|
  sum = 0

  puts "#{driver} ratings:"
  trips.each do |trip|
    puts trip[:rating]
    sum += trip[:rating].to_f
  end
  puts "Total: #{sum}"
  average = sum / trips.length
  puts "The average rating for #{driver} is #{average}."
  if average > highest_average
    highest_average = average
    driver_highest_avg = driver
  end
end
puts "#{driver_highest_avg} has the highest average rating of: #{highest_average}"



