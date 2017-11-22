class Vitfait
  class << self
    def happy_end
      puts "\n=========================="
      puts 'Done, you deserve it : 🍺'
      puts '==========================='
    end

    def draw_progress(progress_current, progress_total)
      percentage_done = ((progress_current + 1) * 100) / progress_total
      percentage_left = 100 - percentage_done
      print "\r"
      print "In progress => #{progress_current + 1} / #{progress_total} | "
      done = '_' * percentage_done
      left = '_' * (percentage_left - 1) if percentage_left > 0
      print "#{percentage_done}% "
      print "#{done}🚋 #{left} 🏁  "
    end
  end
end
