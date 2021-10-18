require_relative "lib/user.rb"
require_relative "lib/event.rb"

julie = User.new("julie@julie.com", 35)
jean = User.new("jean@jean.com", 23)
claude = User.new("claude@claude.com", 75)

# all_user = User.all
# puts all_user
find_age = User.find_by_email("claude@claude.com")
puts find_age
# new_ev = Event.new("2010-10-31 12:00", 30, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
# puts "#{all_user}"
# puts new_ev.to_s("2010-10-31 12:00", 30, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
# puts new_ev.start_date
# puts new_ev.duration
# puts new_ev.title
# puts "#{new_ev.attendees}"
# puts new_ev.end_date(new_ev.start_date, new_ev.duration)
# puts new_ev.is_past?(new_ev.start_date)
# puts new_ev.is_future?(new_ev.start_date)
# puts new_ev.is_soon?(new_ev.start_date)

# new_date = new_ev.postpone_24h(new_ev.start_date)
# puts new_date
#On crée 3 User




#On cherche un des user à partir de son e-mail

#On peut ensuite utiliser ce user comme on veut. Par exemple pour afficher son age:
