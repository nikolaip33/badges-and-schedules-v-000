# Write your code here.
def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  badges = []
  attendees.each { |attendee| badges << badge_maker(attendee) }
  badges
end

def assign_rooms(attendees)
  rooms = []
  attendees.each_with_index do |attendee, i|
    rooms << "Hello, #{attendee}! You'll be assigned to room #{i+1}!"
  end
  rooms
end

def printer(attendees)
  badges = batch_badge_creator(attendees)
  rooms = assign_rooms(attendees)
  badges.each { |badge| puts badge}
  rooms.each { |room| puts room}
end
