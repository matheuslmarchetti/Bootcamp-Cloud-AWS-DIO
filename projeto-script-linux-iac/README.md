<h1>Descrição do script e comandos</h1>
<p>O script tem a função de automatizar a criação de diretórios, grupos e usuários em um sistema Linux.</p>

<p><code>mkdir</code> cria diretório.</p>

<p><code>echo</code> usado para expor uma mensagem no terminal durante a execução do script.</p>

<p><code>groupadd</code> cria grupo.</p>

<p><code>useradd</code> cria usuário.</p>

<p><code>-m</code> cria o diretório do usuário.</p>

<p><code>-s /bin/bash</code> coloca como padrão o bash no terminal do usuário.</p>

<p><code>-p $(openssl passwd -crypt SenhadoUsuario)</code> adiciona uma senha para o usuário.</p>

<p><code>-c</code> adiciona um comentário ao usuário, que neste script foi um nome completo.</p>

<p><code>-G</code> adiciona usuário ao grupo.</p>

<p><code>chown</code> usado para atribuir donos aos diretórios.</p>

<p><code>chmod</code> usado para atribuir permissões dos usuários aos diretórios.</p>

<p><code>chmod +x iacl.sh</code> para liberar atribuição de executável ao arquivo. Este comando deve ser feito no terminal após salvar o script.</p>

<p><code>./iacl.sh</code> No terminal este comando irá executar o código do script.</p>

<h2>Recomendações e Observações</h2>
<p>A distribuição usada nesse script para teste foi o Ubuntu. Em recomendação sempre execute este script em um ambiente de teste como, por exemplo, uma máquina virtual.</p>