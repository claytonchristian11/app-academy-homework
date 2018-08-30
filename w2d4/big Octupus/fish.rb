require 'byebug'

def sluggish_octopus(arr)
  longest = 'a'
  arr.each do |fish1|
    arr.each do |fish2|
      # debugger
      longer = fish1 if fish1.length > fish2.length
      longer = fish2 if fish2.length >= fish1.length
      longest = longer if longer.length > longest.length
    end
  end
  longest
end

def dominant_octopus

end

def clever_octopus(arr)
  longest = 'a'
  arr.each do |fish|
    longest = fish if fish.length > longest.length
  end
  longest
end

def slow_dance(dir, tiles)
  tiles.each_with_index do |tile, i|
    return i if tile == dir
  end
end

def fast_dance(dir, tiles_hash)
  tiles_hash[dir]
end
