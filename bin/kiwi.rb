#! /usr/bin/ruby

require '../lib/artic-kiwi.rb'

if ARGV.size == 0
  puts "Artic-Kiwi #{Kiwi.version} - Simple Issue Tracker"
  puts
  puts "Commands:"
  puts "   add <text>".ljust(28) + "-- adds a new issue"
  puts "   update <guid> <text>".ljust(28) + "-- updates an issue's text"
  puts "   update <guid>".ljust(28) + "-- updates an issues text; CTRL-D to denote EOF"
  puts "   resolve <guid>".ljust(28) + "-- marks an issue as resolved"
  puts "   info <guid>".ljust(28) + "-- shows the info for an issue"
  puts "   list".ljust(28) + "-- lists all issues"
  puts "   status".ljust(28) + "-- indicates project state"
  puts "   status <guid>".ljust(28) + "-- indicates the state of an issue (partial match)"
  puts "   untrack".ljust(28) + "-- stops tracking the project & removes files"
  puts
else
  srand
  action = ARGV.shift
  etc    = ARGV.dup
  if etc.size > 0
    Kiwi.send(action, etc)
  else
    Kiwi.send(action)
  end
end
