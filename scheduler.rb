require 'rufus-scheduler'

class Scheduler

  scheduler = Rufus::Scheduler.new

  scheduler.every '3s' do
    system "ruby story.rb"
  end
end

Scheduler.new