# Populate the graph with some random points
points = []
(1..10).each do |i|
  points << { x: i, y: rand(50) }
end
last_x = points.last[:x]

SCHEDULER.every '2s' do
  points.shift
  last_x += 1
  points << { x: last_x, y: rand(5) }

  send_event('convergence', points: points)
end


# Populate the graph with some random points
points1 = []
(1..10).each do |i|
  points1 << { x: i, y: rand(50) }
end
last_x1 = points1.last[:x]

SCHEDULER.every '2s' do
  points1.shift
  last_x1 += 1
  points1 << { x: last_x1, y: rand(50) }

  send_event('tran', points: points1)
end
