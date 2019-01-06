describe 'fazer uma requisicao' do 

    it 'get' do
    #sem a utilizacao do module 
    @opcao01  = HTTParty.get('https://api-de-tarefas.herokuapp.com/contacts/16')    
    puts @opcao01    
    end
end