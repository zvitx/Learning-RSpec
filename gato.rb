require_relative 'animal'

class Gato < Animal
    attr_accessor :cor

    def initialize(nome, idade, cor)
        super(nome, idade)
        @cor = cor
    end

    def miar
        "Miauuu"
    end
end