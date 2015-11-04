def table(n)
  12.times do |i| 12
    "#{n} X #{i+1} = #{n*(i+1)}"
  end
end

100000.times do |i|
  "----- Table du #{i} -----"
  table i
end
