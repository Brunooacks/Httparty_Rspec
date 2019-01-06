describe 'usando hooks' do 

 before(:each) do
     puts 'executei antes dos testes'
 end

    it 'teste padrao' do 
        total = 5 + 5
        expect(total).to eql 10
        puts total
    end

 after(:each) do 
    puts 'executei depois dos testes'
 end

end 