describe 'fazer uma requisicao' do 
 
    it 'post' do 
        #Forma simples de utilizacao do HTTParty
        @body = 
        {
            "name": "bruno 2040",
            "last_name": "oaaaa ",
            "email": "bruno_2040@gmail.com",
            "age": "28",
            "phone": "21984759575",
            "address": "Rua tres",
            "state": "Minas Gerais",
            "city": "Belo Horizonte"
        }.to_json

        @headers = {
            'Accept': 'application/vnd.tasksmanager.v2' ,
            'Content-Type': 'application/json'
        }
        @request = HTTParty.post('https://api-de-tarefas.herokuapp.com/contacts', 
                    body: @body , headers: @headers )
        puts @request
    end

end 