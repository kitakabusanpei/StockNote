module PositionsHelper
  def color(position_length)
  count = 0
  i = 0
  color = ['orange', 'lime', 'yellow','blue','green','aqua','purple','navy','teal','fuchsia','maroon']
  while count < position_length
    if count == 11
      i = 0
    end
    print "#{color[i]},"
    i+=1
    count+=1
  end
  end
end
