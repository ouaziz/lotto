require 'csv'

data = CSV.parse(File.read("max2023.csv"), headers: true)

def get_lotto_numbers(data)
    rows = data.length
    cols = 7
    table = Array.new(rows) { Array.new(cols) }

    for i in 0...rows
        for j in 0...cols
            table[i.to_i][j.to_i] = data[i.to_i][j.to_i+3]
        end
    end
    return table
end

def get_lotto_dates(data)
    rows = data.length
    cols = 3
    table = Array.new(rows) { Array.new(cols) }

    for i in 0...rows
        for j in 0...cols
            table[i.to_i][j.to_i] = data[i.to_i][j.to_i]
        end
    end
    return table
end

# table.each do |row|
#     puts "\n\nlength() method form : #{row.length()}"
#     puts "row = #{row}"
# end

class Init
    def get_minified_array(r)
        cols = 7
        c = Array.new(cols) 
        for i in 0...cols
            if i == 0 then
                c[i] = r[i].to_i
            else
                c[i] = r[i].to_i - r[i-1].to_i
            end 
        end
        return c
    end

    def get_maximized_array(r)
        cols = 7
        c = Array.new(cols)
        for i in 0...cols
            if i == 0 then
                c[i] = r[i].to_i
                
            elsif i == 1 then 
                c[i] = r[i].to_i + r[i-1].to_i
            else
                c[i] = r[i].to_i + c[i-1].to_i
            end 
        end
        return c
    end

    def minify_data(number)
        characters = number.to_s.chars.map(&:to_i)
        r = 0 
        characters.each do |c|
            r = r + c
        end
        return r
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
# c = Init.new.get_minified_array(r)
# puts "minified = #{c}"
# d = Init.new.get_maximized_array(c)
# puts "maxified = #{d}"

# e = Predict.new.generate_7numbers
# puts "generated = #{e}"
# d = Init.new.get_maximized_array(e)
# puts "maxified = #{d}"

# puts "minify lotto_numbers"
# get_lotto_numbers(data).each do |row|
#     puts "row = #{row}"
#     c = Init.new.get_minified_array(row)
#     puts "minified = #{c}"
# end

puts "minify lotto_dates"
get_lotto_dates(data).each do |row|
    puts "row = #{row}"
    # c = Init.new.get_minified_array(row)
    # puts "minified = #{c}"
end

exit
