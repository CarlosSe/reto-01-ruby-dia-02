class GameOfLife

    def populated(game)
        game.each_with_index do |row, index_row|
            row.each_with_index do |cell, index_cell|
                numero = count_neighbors(game, index_row, index_cell)
                puts "#{numero}"
            end
        end
    end

    def count_neighbors(game, index_row, index_cell)
        contador = 0
        matrix_size = game[index_row].length
        puts "CURRENT #{game[index_row][index_cell]}"
        puts "#{game[index_row - 1][index_cell]}"
        puts "INDEX #{index_cell}"
        for j in (index_row - 1)..(index_row + 1)
            for i in (index_cell - 1)..(index_cell + 1)
                if i >= 0 && j >= 0 && i < matrix_size && j < matrix_size
                    if(game[j][i] != 0) 
                        contador += 1
                    end
                    puts "Test #{j} - #{i}"
                end
            end
        end

        return (contador - 1)
    end

end

s = GameOfLife.new
s.populated([
    [1,1,1],
    [1,1,1],
    [1,1,1],
])
