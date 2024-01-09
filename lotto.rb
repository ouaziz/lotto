# def lotto
#   (1..45).to_a.sample(6).sort
# end

class Init
    def calc
        r = %w[03 06 11 24 29 45 50]
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
end

c = Init.new.calc
puts "c = #{c}"