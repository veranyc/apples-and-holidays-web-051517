require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season]
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_output = nil
  holiday_hash.each do |season, data|
    # for each season in the holiday_hash put the name of the season capitalized along with : (e.g. Winter:)
    puts "#{season.capitalize}:"
    data.each do |holiday, supplies|
      #for each holiday in the data set, change it to an string value and then split it up with a space inbetween
      #run the .map method to capitalize each value in supplies array
      #join the supplies array so that it is now one string value with a comman and space inbetween the words
      #puts the modified holiday keys along with their holiday data
      puts"  #{holiday.to_s.split('_').map {|x| x.capitalize }.join(' ') }: #{supplies.join(", ")}"
    end
  end
end

#


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holiday = []
  holiday_hash.each do |season, data|
    data.each do |holiday, supplies|
      if supplies.include?("BBQ")
          bbq_holiday << holiday
      end
    end
  end
  bbq_holiday
end

#OLD CODE ATTEMPTS
#def all_supplies_in_holidays(holiday_hash)

#  holiday_hash.each do |season, data|
#    season_cap = season.to_s.capitalize
#    season_cap += ":"
#    season_cap
#    print season_cap
#    data.each do |holiday,supplies|
      #holiday.to_s
    #  if holiday.include?(" ")
    #      holiday.split
    #      holiday.join(" ")
    #  end
    #    holiday.capitalize!
    #end
  #  puts "   #{holiday}: #{supplies.join(" ")}"
  #end
#end
