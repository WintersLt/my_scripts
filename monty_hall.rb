#!/usr/bin/ruby

##############
# Sample simulation of monty hall problem
# See https://en.wikipedia.org/wiki/Monty_Hall
# Code can be made cleaner!!
#
# Created by: Akash Pandey
#############

num_wins = 0
puts "enter number of iterations : "
num_iter = gets.chomp.to_i
#repeat simulation 1000 times
num_iter.times do
	# Choose a door where car is
	car_door = 1 + rand(3)

	# player chooses a doors
	player_door = 1 + rand(3)

	#hosts door
	host_door = 0
	if car_door != player_door
		#only one door left
		host_door = 6 - car_door - player_door
	else #player and car door aare same
		host_door = car_door + 1
		host_door = 1 if host_door == 4 # assign any of the other two nodes to host
	end

	#switch
	player_door = 6 - player_door - host_door
	if player_door == car_door
		num_wins += 1
	end
end
	
puts ""
puts "#{num_wins}"
puts ""
puts "percentage = " + "#{(num_wins*100)/num_iter}"
