class GameOfLife

    def populated(game)
        game.each_with_index do |row, index_row|
            row.each_with_index do |cell, index_cell|
                count_neighbors(game, index_row, index_cell)
            end
        end
    end

    def count_neighbors(game, index_row, index_cell)
        previous_row = index_row - 1
        next_row = index_row + 1
        index_previous_neighbor = index_cell - 1
        index_next_neighbor = index_cell + 1
        puts "CURRENT #{game[index_row][index_cell]}"
        for i in index_cell..index_next_neighbor
            if(previous_row > 0) 
                puts "#{game[previous_row][i]}"
            end  
        end
        for i in index_cell..index_previous_neighbor
            if(previous_row > 0) 
                puts "#{game[next_row][i]}"
            end  
        end
    end

end

s = GameOfLife.new
s.populated([
    ["0A","1A","2A"],
    ["0B","1B","2B"],
    ["0C","1C","2C"],
])
