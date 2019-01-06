# Describe: ele cria um grupo e dentro deste grupo ele vai criar varias acoes


describe 'Soma'  do 

    puts 'rodei minha descricao'

it ' de dois numeros' do 
   
    a = 2 
    b = 3 
    resultado = a + b
    puts resultado
    expect(resultado).to eql 5

end

it ' de 03 numeros' do 
    total = 2+2+4
    puts total 
    expect(total).to eql 8
end

end 

