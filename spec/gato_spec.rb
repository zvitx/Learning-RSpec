require_relative '../gato'

RSpec.describe Gato do
    let(:gato1) {Gato.new('Rengar', 3, 'Preto')}

    context 'ações do gato' do
        it 'miar' do
            expect(gato1.miar).to eq('Miauuu')
        end
        it 'dormir' do
            expect(gato1.dormir).to eq('Rengar está dormindo.')
        end
    end

    context 'atributos do gato' do
        it 'nome do gato' do
            expect(gato1.nome).to eq('Rengar')
        end
        it 'idade do gato' do
            expect(gato1.idade).to eq(3)
        end
    end
end