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


p p.sum
