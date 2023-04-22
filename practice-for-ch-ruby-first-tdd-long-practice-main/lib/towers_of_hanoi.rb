class TowersOfHanoi
    attr_reader :piles, :disks
    def initialize
        @piles = Array.new(3){[]}
        @disks=3
        @piles[0] = [3,2,1]
    end

    def move
        puts 'select which pile to move from 1-3'
        from = (gets.chomp.to_i)-1
        puts'select which pile to move to 1-3'
        to = (gets.chomp.to_i)-1
        move = piles[from].pop
        place = piles[to].push(move)
        
    end
    
    def print 
        (0...piles.length).each do |i|
            puts '________________'
            puts "#{i+1} | #{piles[i].join(' ')}"
            puts '________________'
        end
    end
    def won?
        piles[2]==[3,2,1]
    end

    def play
        until won?
            print 
            move
            print
        end
        'you win!!'
    end

    pro 
    def change_pile(array)
        @piles=array 
    end
end

