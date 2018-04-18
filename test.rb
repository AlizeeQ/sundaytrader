jour_1 = { :GOO => 15, :MMM => 14, :ADBE => 12, :EA=> 13, :BA => 8, :KO => 10, :XOM => 20, :GPS => 7, :MCD => 11, :DIS => 15, :CRM => 6, :JNJ => 10 }

jour_2 = { :GOO => 8, :MMM => 20, :ADBE => 3, :EA=> 10, :BA => 5, :KO => 19, :XOM => 12, :GPS => 6, :MCD => 15, :DIS => 9, :CRM => 10, :JNJ => 17 }

jour_3 = { :GOO => 3, :MMM => 8, :ADBE => 15, :EA=> 5, :BA => 10, :KO => 5, :XOM => 15, :GPS => 13, :MCD => 10, :DIS => 18, :CRM => 5, :JNJ => 14 }

jour_4 = { :GOO => 17, :MMM => 3, :ADBE => 6, :EA=> 9, :BA => 15, :KO => 6, :XOM => 8, :GPS => 1, :MCD => 10, :DIS => 15, :CRM => 18, :JNJ => 3 }

jour_5 = { :GOO => 8, :MMM => 18, :ADBE => 4, :EA=> 6, :BA => 15, :KO => 18, :XOM => 3, :GPS => 12, :MCD => 19, :DIS => 3, :CRM => 7, :JNJ => 9 }

jour_6 = { :GOO => 10, :MMM => 12, :ADBE => 8, :EA=> 3, :BA => 18, :KO => 20, :XOM => 5, :GPS => 11, :MCD => 3, :DIS => 9, :CRM => 8, :JNJ => 15 }

jour_7 = { :GOO => 17, :MMM => 14, :ADBE => 2, :EA=> 17, :BA => 7, :KO => 13, :XOM => 1, :GPS => 15, :MCD => 15, :DIS => 10, :CRM => 9, :JNJ => 17 }

dayss = [jour_1,jour_2, jour_3, jour_4, jour_5, jour_6, jour_7]

def trader_du_dimanche(days)
  companies = {}
  #days[0].each_key {|key| companies << key.to_s = Hash.new }
  days[0].each_key do|key|
    name = key.to_s
    companies[name] = {}
  end
  lejour = 1
  days.each do |day|
    day.each do |key, value|
      key2 = key.to_s
      companies[key2][value] = lejour
    end
    lejour = lejour +1
  end

  companies.each do |key, value|
    puts "résultat pour #{key.to_s}"

    keys = []
    companies[key].each do |key2, value2|
      keys << key2
    end
    puts "valeur min de #{keys.min} atteinte le jour #{companies[key][keys.min]}"
    puts "valeur max de #{keys.max} atteinte le jour #{companies[key][keys.max]}"

  end

  return companies
end

trader_du_dimanche(dayss)
