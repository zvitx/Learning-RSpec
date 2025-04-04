require_relative '../animal'

RSpec.describe Animal do
    let(:animal1) {Animal.new('Warwick', 10)}

    context 'ações do animal' do
        it 'dormir' do
            expect(animal1.dormir).to eq('Warwick está dormindo.')
        end
        it 'brincar' do
            expect(animal1.brincar).to eq('Warwick está brincando!')
        end
    end
    context 'atributos do animal' do
        it 'nome do animal' do
            expect(animal1.nome).to eq('Warwick')
        end
        it 'idade do animal' do
            expect(animal1.idade).to eq(10)
        end
    end
end