describe 'validando a funcao delete' do 

    it 'delete' do 
        @request_delete = Contato.delete('/contacts/33')
        puts @request_delete
    end 
end 