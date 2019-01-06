describe  'soma ' do 

    context ' somar dois numeros ' do 

        it 'negativos' do 

            total = -3 + -4 
            expect(total).to eql -7
            puts total
        end 

        it 'positivos' do 
            total =  3 + 3 
            expect(total).to eql 6
            puts total
        end    
    end
end
