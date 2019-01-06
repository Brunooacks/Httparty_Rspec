describe 'utilizando token ' do 
    it 'token' do 
        #gera um email aleatorio
        @email = Faker::Internet.email

        @body_token_01 = {
            user: {
                email: @email,
                password: '123456',
                password_confirmation: '123456' 
            }
        }.to_json

        @header_token_01 = {
            Accept: 'application/vnd.tasksmanager.v2' ,
            'Content-Type': 'application/json'
        }

        @request_token_01 = Criar.post('/users', body: @body_token_01, headers: @header_token_01)
        puts @request_token_01.body
        puts @request_token_01.parsed_response['data']['attributes']['auth-token']

        @body_token_02 = {
            session: {
                email: @email,
                password: '123456'
            }
        }.to_json
        @header_token_02 = {
            Accept: 'application/vnd.tasksmanager.v2' ,
            'Content-Type': 'application/json',
            #para tokens aleatorios
            Authorization: "#{@request_token_01.parsed_response['data']['attributes']['auth-token']}"
            #para token  fixo pode passar diretamente: 
            #Authorization:"ue2wK_toggskz9amrTko"
        }
        @login = Criar.post('/sessions', body:@body_token_02 , headers: @header_token_02)
        puts @login.body
    end 
end 