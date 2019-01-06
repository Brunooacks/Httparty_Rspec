describe 'validando os cenarios put' do 
context 'para alterar dados com' do 
    it 'put 01' do 
        @body_put_01 = {
            "id": 33,
            "name": "otavio",
            "last_name":  "joao",
            "email": "joaootavio@gmail.com",
            "age": "01",
            "phone": "21984759575",
            "address": "Rua dez ",
            "state": "Rio de Janeiro",
            "city": "Rio de Janeiro"
        }.to_json
        @request_put_01 = Contato.put('/contacts/33' , body: @body_put_01)
        puts @request_put_01
    end 

    it 'put 02 ' do 
        @body_put_02 = {
            "id": 34,
            "name": "joaojjjo",
            "last_name": "otaviojjo",
            "email": "joaojjjo@gmail.com",
            "age": "01",
            "phone": "21984759575",
            "address": "Rua tres",
            "state": "Minas Gerais",
            "city": "Belo Horizonte"
        }.to_json
        @request_put_02 = Contato.put('/contacts/34' , body: @body_put_02)
        puts  @request_put_02
    end 
end 

end