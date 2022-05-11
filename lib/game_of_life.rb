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
end

