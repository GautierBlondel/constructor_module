require 'time'

class Event
  attr_accessor :start_date, :duration, :title, :attendees
  @@end_date = Time.new

  def initialize(date, dur, ttl, att) 
    @start_date = Time.parse(date)
    @duration = dur
    @title = ttl
    @attendees = att
  end

  def postpone_24h(date)
    @start_date = date + (3600*24)
  end

  def end_date(date, dur)
    @@end_date = date + (dur * 60)
  end

  def is_past?(date)
    date < Time.now
  end

  def is_future?(date)
    date > Time.now
  end 

  def is_soon?(date)
    Time.now >= date - (30*60) && Time.now <= date
  end

  def to_s(date, dur, ttl, att) 
    puts "Titre: #{ttl}"
    puts "Date de début: #{Time.parse(date)}" 
    puts "Durée: #{dur}" 
    puts "Invités: #{att.join(", ")}"
  end
end