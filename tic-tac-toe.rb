class Game

    attr_accessor :a, :b, :c, :player, :player1, :player2, :num, :arr, :draw

    def initialize()
    @a = [1, 2, 3]
    @b = [4, 5, 6]
    @c = [7, 8, 9]
    @winner
    @player
    @player1
    @player2
    @num = ''
    @arr = []
    @draw = (1..9).to_a
    end

    def players
        print 'Player 1, what is your name? '
        @player1 = gets.chomp
        print "#{@player1}, you are #{@player1.chr}\n\n"
        print 'Player 2, what is your name? '
        @player2 = gets.chomp
        print "#{@player2}, you are #{@player2.chr}\n\n"
    end

    def player1
        @player = @player1 
        print "#{player}, your turn!\n"
        print "\n#{player} chose... "
    end

    def player2
        @player = @player2
        print "#{player}, your turn!\n"
        print "\n#{player} chose... "
    end

    def board
        puts ""
        puts a.join(" | ")
        puts "-- --- --"
        puts b.join(" | ")
        puts "-- --- --"
        puts c.join(" | ")
        puts ""
    end

    def turn
        while num = gets.to_i
            if num < 1 or num > 9
                print "You must choose a number between 1 and 9\n"
            elsif arr.include? num
                print "Number taken. Choose another number.\n"
            else
                arr << num
                @winner = @player
                if  draw === arr.sort
                    puts "It's a draw!"
                    exit
                else
                if a.include? num
                    i = a.find_index(num)
                    a[i] = player.chr
                elsif
                    b.include? num
                    i = b.find_index(num)
                    b[i] = player.chr
                elsif
                    c.include? num
                    i = c.find_index(num)
                    c[i] = player.chr
                end
            end

            board
            winner

            break
            end
        end
    end

    def winner
        case
        when #Horizontal
             a[0]===a[1] && a[1]===a[2],
             b[0]===b[1] && b[1]===b[2],
             c[0]===c[1] && c[1]===c[2],
             #Vertical
             a[0]===b[0] && b[0]===c[0],
             a[1]===b[1] && b[1]===c[1],
             a[2]===b[2] && b[2]===c[2],
             #Diagonal
             a[0]===b[1] && b[1]===c[2],
             a[2]===b[1] && b[1]===c[0]
            puts "#{@winner} won!!\n"
            exit           
        end
    end

    def play

        players
        print "Press Enter to start!"
        gets.chomp
        board

        loop do
            draw == arr.sort
            
            player1
            turn
        
            player2
            turn
        end
    end
end

new_game = Game.new()
new_game.play