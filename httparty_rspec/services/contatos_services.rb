module Contato
    include HTTParty
    #url base de contato
    base_uri CONFIG['url_padrao']
    #opcoes do service 
    format :json
    headers Accept: 'application/vnd.tasksmanager.v2' ,
    'Content-Type': 'application/json'
end 