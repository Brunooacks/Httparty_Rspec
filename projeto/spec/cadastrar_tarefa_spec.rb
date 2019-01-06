describe 'Cadastrar' do 
    def login(field_email, field_password)
        @body = {
            session: {
                email: field_email,
                password: field_password
            }
        }.to_json
        @login = Login.post('/sessions' , body: @body)
    end 
    context 'tarefas' do 
        before { login('brunobatista66@gmail.com', '123456')}


        it 'com sucesso' do 
            @header = {
                Accept: 'application/vnd.tasksmanager.v2' ,
                        'Content-Type': 'application/json',
                        Authorization: @login.parsed_response['data']['attributes'][ 'auth-token']
            }
            @body = {
                task: {
                    title: 'Criei tarefa',
                    description: 'Descrição da tarefa criei tarefa.',
                    deadline: '2019-01-06 15:40',
                    done: true
                }
            }.to_json

            @tarefas = Cadastrar.post('/tasks', body: @body, headers: @header)
            puts @tarefas.body
            expect(@tarefas.parsed_response['data']['attributes']['title']).to eql 'Criei tarefa' 
        end 
    end 
end 