# ganho do around e que o before e after ficam agrupados em um unico lugar facilitando e gerando menos linha de codigo
describe 'usando around' do 

    around(:each) do |testes|
      # e a mesma coisa que o before
     puts 'executando comandos antes dos testes'    
     testes.run 
        
     # e a mesma coisa que o after

     puts 'executando comando depois dos testes'
    end 


    it 'dois numeros' do 
        total = 30 + 30
        expect(total).to eql 60
        puts total
    end 
end 