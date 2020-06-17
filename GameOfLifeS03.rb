class GameOfLifeS03

    def populated(game)
        game.each_with_index do |row, index_row|
            row.each_with_index do |cell, index_cell|
                numero = count_neighbors(game, index_row, index_cell)
                if numero <= 1
                    game[index_row][index_cell] = 0
                elsif numero >= 4
                    game[index_row][index_cell] = 0
                end
            end
        end

        game.each do |row|
            puts "#{row}"
        end
    end

    def count_neighbors(game, index_row, index_cell)
        contador = 0
        size = game[index_row].length
        for j in (index_row - 1)..(index_row + 1)
            for i in (index_cell - 1)..(index_cell + 1)
                if i >= 0 && j >= 0 && i < size && j < size
                    if(game[j][i] != 0) 
                        contador += 1
                    end
                    puts "Vecinos #{j} - #{i}"
                end
            end
        end

        return (contador - 1)
    end

end

s = GameOfLifeS03.new
s.populated([
    [1,0,1],
    [1,1,1],
    [1,1,1],
])
