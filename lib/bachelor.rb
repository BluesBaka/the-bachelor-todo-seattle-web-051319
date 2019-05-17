require "pry"
def get_first_name_of_season_winner(data, season)
  # find the season, then find the value "winner", then get her first Name
  data[season].collect do |contestant_data|
    if contestant_data["status"] == "Winner"
      return contestant_data["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
    data.values.flatten.find {|contestant| contestant["occupation"] == occupation}["name"]
  # code here
end

def count_contestants_by_hometown(data, hometown)
  data.values.flatten.count {|contestant| contestant["hometown"] == hometown}
  # code here
end

def get_occupation(data, hometown)
  data.values.flatten.find {|contestant| contestant["hometown"] == hometown}["occupation"]
end

def get_average_age_for_season(data, season)
  total_ages = 0.0
  data[season].each do |i|
    total_ages += i["age"].to_f
  end
  actual_avg = total_ages/data[season].length
  actual_avg.round
  # data.values.flatten.collect {|contestant| contestant["season"] == season}["age"]
end
