class Animal
    attr_accessor :nome, :idade

    def initialize(nome, idade)
        @nome = nome
        @idade = idade
    end

    def dormir
        "#{@nome} está dormindo."
    end

    def brincar
        "#{@nome} está brincando!"
    end
end