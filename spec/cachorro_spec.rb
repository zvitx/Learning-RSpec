require_relative '../cachorro'

RSpec.describe Cachorro do
    let(:cachorro1) {Cachorro.new('Nasus', 5, 'Cachorrão')}

    context 'ações do cachorro' do
        it 'latido do cachorro' do
            expect(cachorro1.latir).to eq('Auuuu')
        end
        it 'comendo' do
            expect(cachorro1.comer('frango')).to eq('Nasus está comendo frango.')
        end
        it 'brincando' do 
            expect(cachorro1.brincar).to eq('Nasus está brincando!')
        end
        it 'dormindo' do
            expect(cachorro1.dormir).to eq('Nasus está dormindo.')
        end
    end

    context 'atributos do cachorro' do
        it 'nome do cachorro' do
            expect(cachorro1.nome).to eq('Nasus')
        end
        it 'idade do cachorro' do
            expect(cachorro1.idade).to eq(5)
        end
        it 'raça do cachorro' do
            expect(cachorro1.raca).to eq('Cachorrão')
        end
    end

    context 'alterando atributos' do
        it 'alterando nome' do
            cachorro1.nome = 'Renekton'
            expect(cachorro1.nome).to eq('Renekton')
        end
        it 'alterando idade' do
            cachorro1.idade = 10
            expect(cachorro1.idade).to eq(10)
        end
        it 'alterando raça' do
            cachorro1.raca = 'Bulldog'
            expect(cachorro1.raca).to eq('Bulldog')
        end
    end

    context 'verifica retorno dos métodos' do
        it 'garante que os metodos retornam strings' do
            expect(cachorro1.latir).to be_a(String)
            expect(cachorro1.comer('frango')).to be_a(String)
            expect(cachorro1.brincar).to be_a(String)
            expect(cachorro1.dormir).to be_a(String)
        end
    end

    context 'verifica tipos de atributos' do
        it 'garante que as entradas são do tipo correto' do
            expect(cachorro1.nome).to be_a(String)
            expect(cachorro1.idade).to be_a(Integer)
            expect(cachorro1.raca).to be_a(String)
        end
    end

    context 'errado' do
        it 'garante que o nome não é um número' do
            expect(cachorro1.nome).not_to be_a(String)
        end
    end
end