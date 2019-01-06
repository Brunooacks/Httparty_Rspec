describe 'fazer uma requisicao' do 
 
    it 'post' do 
        #Forma simples de utilizacao do HTTParty
        @body = 
        {
            "name": "bruno 2033",
            "last_name": "oaaaa ",
            "email": "bruno_2033@gmail.com",
            "age": "28",
            "phone": "21984759575",
            "address": "Rua tres",
            "state": "Minas Gerais",
            "city": "Belo Horizonte"
        }.to_json

        @request = Contato.post('/contacts', body: @body)
        puts @request
    end
end 