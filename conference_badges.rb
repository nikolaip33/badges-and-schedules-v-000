# Write your code here.
def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  attendees.map { |attendee| badge_maker(attendee) }
end

def assign_rooms(attendees)
  attendees.each.with_index(1).map do |attendee, i|
    "Hello, #{attendee}! You'll be assigned to room #{i}!"
  end
end

def printer(attendees)
  batch_badge_creator(attendees).each { |badge| badge}
  assign_rooms(attendees).each { |room| puts room}
end
