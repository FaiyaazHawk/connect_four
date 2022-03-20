#player class to contain name and symbol for player

class Player

attr_accessor :name, :symbol

    def initialize(name = nil,symbol)
        @name = name
        @symbol = symbol
    end
end