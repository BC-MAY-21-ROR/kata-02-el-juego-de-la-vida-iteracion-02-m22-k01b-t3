class Game
    
    #live = "*"
    #dead = "."

    puts "Introducir ancho del tablero"
    width = gets.chomp.to_i
    puts "Introducir alto del tablero"
    height = gets.chomp.to_i

    def initialize(width, height)
        @width = width
        @height = height
        @matrix = []
    end

    def create_matrix
        width_real = @width - 1
        height_real = @height - 1
        @matrix = Array.new(@width){Array.new(@height){["*","."].sample}}  
        (0..height_real).each do |i|
            (0..width_real).each do |j|
                if i == 0 || i==height_real || j==0 || j==width_real
                    @matrix[i][j] = "."
                end    
            end
        end        
    end

    # first generation
    def next_generation
        print_matrix
        new_matrix = create_matrix

        new_matrix.each_with_index.map do |array, index_array|
            array.each_with_index.map do |celula, index_celula|
            right = []
            left = []
            top = []
            bottom = []

            #Check left to right
            if index_celula.zero?
                right.push(array[index_celula + 1])
            elsif index_celula == (array.length - 1)
                left.push(array[index_celula - 1])
            else
                left.push(array[index_celula - 1])
                right.push(array[index_celula + 1])
            end

                        #Check top
            if index_array.zero?
                'none'
            elsif index_celula.zero?
                top.push(new_matrix[index_array - 1][index_celula], new_matrix[index_array - 1][index_celula + 1])
            elsif index_celula == array.length - 1
                top.push(new_matrix[index_array - 1][index_celula - 1], new_matrix[index_array - 1][index_celula])
            else
                top.push(new_matrix[index_array - 1][index_celula - 1], new_matrix[index_array - 1][index_celula],
                new_matrix[index_array - 1][index_celula + 1])
            end
            

            #Check bottom
            if index_array == (new_matrix.length - 1)
                'none'
            elsif index_celula.zero?
                bottom.push(new_matrix[index_array + 1][index_celula], new_matrix[index_array + 1][index_celula + 1])
            elsif index_celula == (array.length - 1)
                bottom.push(new_matrix[index_array + 1][index_celula - 1], new_matrix[index_array + 1][index_celula])
            else
                bottom.push(new_matrix[index_array + 1][index_celula - 1],new_matrix[index_array + 1][index_celula], new_matrix[index_array + 1][index_celula + 1])
            end
            
            neighboors=left+right+top+bottom
            total_neighboors = neighboors.sum

            #Rules implementation
            if celula==1
                if  total_neighboors<2 || total_neighboors>3
                new_matriz[index_array][index_celula]=0
                modify_matriz[index_array][index_celula]="."
                elsif total_neighboors==2 || total_neighboors==3
                new_matriz[index_array][index_celula]=1
                modify_matriz[index_array][index_celula]="*"
                end
            else #celula==0
                if total_neighboors==3
                new_matriz[index_array][index_celula]=1
                modify_matriz[index_array][index_celula]="*"
                else
                new_matriz[index_array][index_celula]=0
                modify_matriz[index_array][index_celula]="."

                end
            end
        end
        end
    end

    def print_matrix
        i = 0
        while i < @width
            puts @matrix[i].join(" ")
            i = i + 1            
        end
    end   
    
    tablero = Game.new(width,height)
    tablero.create_matrix
    tablero.print_matrix
    tablero.next_generation
end

