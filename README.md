#Quiz App

This application is written in Ruby 2.0.0 and uses the Rails 4 framework.


The Barclays Cycle Hire System allows people in London to hire bikes to travel around the city. Customers hire bikes from Barclays docking stations and can travel to any other location that has a docking station. Vans frequently travel between docking stations making sure each station has enough working bikes for hire, and broken bikes are taken in for maintenance. 

We were tasked with creating a system that would manage this task, taking into account the following:

- Each bike can be in one of two conditions: working or broken
- Only working bikes can be rented from a docking station. Broken bikes must not be released to customers.
- Broken bikes can be released to Vans that have come to maintain the docking station.
- Customers are only able to dock the bike if the docking station has not reached capacity
- Vans are able to fill empty docking stations with working bikes (not broken bikes)


###Technologies learned
Ruby - Introduction to Class and instance methods and variables and dynamic programming.

Rspec - Introduction to stubbing and mocking. Testing classes individually avoiding temptations for classes to be dependent on each other.

