def determine_current_hour
  current_time = Time.new
  current_time.hour
end

def determine_name
  puts "Hi, what is your first name?"
end

determine_name

def greeting
  current_hour = determine_current_hour
  if current_hour >= 3 && current_hour < 12
    time = "morning"
  elsif current_hour >= 12 && current_hour < 18
    time = "afternoon"
  elsif current_hour >= 18 || current_hour <= 2
    time = "evening"
  end

  first_name = gets.to_s

  puts "Good #{time} #{first_name.capitalize}!"
end

greeting
