module PositionsHelper
  def color(position_length)
    colors = []
    count = 0
    i = 0
    color = ['orange','lime','yellow','blue','green','aqua','purple','navy','teal','fuchsia','maroon','red']
    while count < position_length
      if count == 12
        i = 0
      end
      colors.push(color[i])
      i+=1
      count+=1
    end
    colors.each { |color| print color }
  end
end
