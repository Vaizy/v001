y = 100000

n = [0, 2, 0, 2, 0, 1 ,1]

k = [100, 110, 110, 110, 110, 110, 110]

denominator = 0
k_temp = 1

(1..6).each do |i|
  k_temp = k_temp * (k[i-1]/100.0).round(2)
  denominator = denominator + n[i] * k_temp
end

p = [0, 0, 0, 0, 0, 0, 0]
p[1] = (y / denominator).round(2)

(2..6).each do |i|
  p[i] = (p[i-1] * (k[i-1] / 100.0)).round(2)
end

# check
sum = 0
(1..6).each do |i|
  sum = sum + n[i] * p[i]
end


difference = (y - sum).round(2)
if difference > 0 then
  puts difference #TODO: 
elsif difference < 0
  throw "error"
end
  
