num = 1
10.times do
  Photo.create(name: "pic#{num}", width: rand(5..10), height: rand(5..10))
  num += 1
end