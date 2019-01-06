describe 'validando os cenarios patch' do 
    context 'para alterar dados com' do 
        it 'patch 01' do 
            @body_patch_01 = {
                "id": 30,
                "name": "Teste2029",
                "email": "teste2029@gmail.com",
                "age": "33",
                "phone": "1198458899"
            }.to_json
            @request_put_01 = Contato.put('/contacts/30' , body: @body_patch_01)
            puts @request_put_01
        end 
    
        it 'patch 02 ' do 
            @body_patch_02 = {
                "id": 31,
                "name": "MariJoooao",
                "email": "marijoooao@gmail.com",
                "age": "33",
                "phone": "21988887777"
            }.to_json
            @request_patch_02 = Contato.patch('/contacts/31' , body: @body_patch_02)
            puts  @request_patch_02
        end 
    end 
    
    end