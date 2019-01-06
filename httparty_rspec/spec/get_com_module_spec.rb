describe 'fazer uma requisicao' do 

    it 'get' do
    @get = Contato.get('/contacts/282')
    puts @get
    end


end