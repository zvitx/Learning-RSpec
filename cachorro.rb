require_relative 'animal'

class Cachorro < Animal
    attr_accessor :raca

    def initialize(nome, idade, raca)
        super(nome, idade)
        @raca = raca
    end

    def latir
        "Auuuu"
    end

    def comer(comida)
        "#{@nome} está comendo #{comida}."
    end
end