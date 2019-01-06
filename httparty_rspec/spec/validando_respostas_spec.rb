describe 'validando respostas' do 

    it 'get 01 validando o status code da requisicao' do
        @get_01 = Contato.get('/contacts/282')
        puts @get_01.code
        expect(@get_01.code).to eql 200
    end

    it 'get 02 imprimindo todo o conteudo do body ' do
        @get_02 = Contato.get('/contacts/282')
        puts @get_02.body
    end

     it 'get 03 - convertendo o response para Json e validando um atributo especifico' do
         @get_03 = Contato.get('/contacts/282')
         #puts @get_03.parsed_response['data']['attributes']['name']
         expect(@get_03.parsed_response['data']['attributes']['name']).to eql 'bruno '
         expect(@get_03.parsed_response['data']['attributes']['last-name']).to eql 'oliveira'
         expect(@get_03.parsed_response['data']['attributes']['email']).to eql 'bruno_oliveira@gmail.com'
         expect(@get_03.parsed_response['data']['attributes']['age']).to eql 32
     end

end