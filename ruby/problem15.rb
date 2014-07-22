$pathCache = {}

# x = distance from right
# y = distance from bottom
def getNumPaths(x, y)
  if x == 0 || y == 0
    return 1
  elsif $pathCache[[x,y]]
    $pathCache[[x,y]]
  else
    $pathCache[[x,y]] = getNumPaths(x - 1, y) + getNumPaths(x, y - 1)
    $pathCache[[y,x]] = $pathCache[[x,y]] # symmetrical points have same answer
  end
end

puts getNumPaths(20, 20)
