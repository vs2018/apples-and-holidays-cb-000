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
  
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  
  holiday_supplies[:winter].each do |key, value|
    value << supply
  end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_supplies[:spring].each do |key, value|
    value << supply
  end

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

  
  holiday_supplies.each do |key, value|
    if key == season
      holiday_supplies[season][holiday_name] = supply_array
    end
  end


end

def all_winter_holiday_supplies(holiday_hash)
  array = []
  holiday_supplies[:winter].each do |key, value|
    array << value
  end
  
  array.flatten

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_supplies.each do |key, value|
    puts "#{key.to_s.capitalize!}:"
    value.each do |holiday, data|
      
      holiday_array= holiday.to_s.split("_")
      
      holiday_array.each do |string|
        string.capitalize!
      end
      
      string = holiday_array.join
      
      holiday_string = "  " + string + ": "
      
    
      data.each_with_index do |word, index|
        array = word.split("")
        array.each_with_index do |split_word, index|
          split_word.capitalize
        end
        holiday_string << ", " if index > 0
        holiday_string << array.join
      end
      
      puts holiday_string
      
    end
  end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







