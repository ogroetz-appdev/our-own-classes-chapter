# Define a class Person with:

#  - An attribute first_name
#  - An attribute last_name
#  - An attribute birthdate (we just assign a string to this attribute, e.g. "April 19, 1987")
#  - An instance method, full_name, that puts first_name and last_name together
#  - An instance method, age, that calculates the number of years between today and birthdate
require "date"

class Person
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :birthdate

  def full_name
    return self.first_name + " " + self.last_name
  end

  def age
    birthdate_parsed = Date.parse(self.birthdate)
    todays_date = Date.today
    date_difference = todays_date - birthdate_parsed
    number_of_days = date_difference.to_i
    number_of_years_old = number_of_days / 365
    return number_of_years_old
  end
end
