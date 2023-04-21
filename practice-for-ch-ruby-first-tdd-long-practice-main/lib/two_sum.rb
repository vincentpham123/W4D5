class Array

    def two_sum
        results = []
        self.each_with_index do |num1, i|
            self.each_with_index do |num2, j|
                if j > i && num1 + num2 == 0
                    results << [i, j]
                end
            end
        end
        results
    end
end