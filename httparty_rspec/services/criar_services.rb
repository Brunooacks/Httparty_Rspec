module Criar
    include HTTParty
    #url base de contato
    base_uri CONFIG['url_padrao']
    #opcoes do service 
    format :json
end