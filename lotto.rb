require 'csv'

# data = CSV.read("max2023.csv")
data = CSV.parse(File.read("max2023.csv"), headers: true)
rows = data.length
cols = 7
table = Array.new(rows) { Array.new(cols) }

for i in 0...rows
    for j in 1..cols
        table[i.to_i][j.to_i-1] = data[i][j]
    end
end

# table.each do |row|
#     puts "\n\nlength() method form : #{row.length()}"
#     puts "row = #{row}"
# end

class Init
    def get_minified(r)
        c = %w[]
        c.append(r[0].to_i)
        r1 = r[1].to_i - r[0].to_i
        c.append(r1)
        r2 = r[2].to_i - r[1].to_i
        c.append(r2)
        r3 = r[3].to_i - r[2].to_i
        c.append(r3)
        r4 = r[4].to_i - r[3].to_i
        c.append(r4)
        r5 = r[5].to_i - r[4].to_i
        c.append(r5)
        r6 = r[6].to_i - r[5].to_i
        c.append(r6)
        # (1..6).each do |i|
        #     a = r[i].to_i - r[i-1].to_i
        #     c.append(a)
        # end
    end

    def get_maxified(data)
        r = data
        c = %w[]
        c.append(r[0].to_i)
        r1 = r[1].to_i + c[0].to_i
        c.append(r1)
        r2 = r[2].to_i + r1
        c.append(r2)
        r3 = r[3].to_i + r2
        c.append(r3)
        r4 = r[4].to_i + r3
        c.append(r4)
        r5 = r[5].to_i + r4
        c.append(r5)
        r6 = r[6].to_i + r5
        c.append(r6)
    end
end

class Predict
    def generate_7numbers
        e = Array.new(7) { rand(1..16) }
        e.sort
    end
end

# r = %w[03 06 11 24 29 45 50]
# puts "original = #{r}"
# c = Init.new.get_minified(r)
# puts "minified = #{c}"
# d = Init.new.get_maxified(c)
# puts "maxified = #{d}"

# e = Predict.new.generate_7numbers
# puts "generated = #{e}"
# d = Init.new.get_maxified(e)
# puts "maxified = #{d}"

puts "minify table"
table.each do |row|
    # puts "row = #{row}"
    c = Init.new.get_minified(row)
    puts "minified = #{c}"
end

exit
