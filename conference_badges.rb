def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(array_of_names)
    badges = Array.new
    array_of_names.each do |name_in_array|
        badges << badge_maker(name_in_array)
    end
    return badges
end

def assign_rooms(attendees)
    attendee_messages = Array.new
    attendees.each.with_index(1) do |name, index|
        attendee_messages << "Hello, #{name}! You'll be assigned to room #{index}!"
      end
    return attendee_messages
 end

 def printer(input)
    badges = batch_badge_creator(input)
    room_assignments = assign_rooms(input)
    
    badges.each do |badge|
      puts badge
    end

    room_assignments.each do |assignment|
      puts assignment
    end
 end
