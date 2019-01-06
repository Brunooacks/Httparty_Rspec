describe 'somar' do 

    context 'dois numeros' do     
    let(:resultado) {8 +8 }
    let(:resultado01) {resultado + 2}
    let(:resultado02) {10 + 10}
    let(:resultado03) {15+15}

      it 'validando o resultado' do 
      puts resultado
      expect(resultado).to eql 16    
      end 
      it 'validando o resultado 01' do 
        puts resultado01
        expect(resultado01).to eql 18 
      end 
      it 'validando o resultado 02' do 
        puts resultado02
        expect(resultado02).to eql 20  
      end 
      it 'validando o resultado 03' do 
        puts resultado03
        expect(resultado03).to eql 30  
      end 
    end 
 end 