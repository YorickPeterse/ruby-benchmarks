GC::Profiler.enable
GC.start

class User
  def name
    return 'Yorick'
  end
end

1000.times do
  t = User.new.name
end

puts GC::Profiler.report
