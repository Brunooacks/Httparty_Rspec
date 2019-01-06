describe 'validando a funcao delete' do 

    it 'delete' do 
        @request_delete = HTTParty.delete('https://api-de-tarefas.herokuapp.com/contacts/285')
        puts @request_delete
    end 
end 