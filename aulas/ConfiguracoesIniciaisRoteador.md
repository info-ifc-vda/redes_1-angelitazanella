# Roteiro para prática em aula - Configuração de endereços IP

## Configurações iniciais do roteador
```sh
Router>enable
Router#configure terminal
Router(config)#hostname [nome_do_roteador]
R0(config)#banner motd #
=============================================================
ACESSO RESTRITO!
Somente pessoal autorizado pode acessar este equipamento.
Tentativas de acesso não autorizado serão registradas.
=============================================================
```
### Proteger o modo exec privilegiado
```sh
R0(config)#enable secret [senhasecret]
```

### Proteger exec do usuário
```sh
R0(config)#line console 0
R0(config-line)#password [senhausuario]
R0(config-line)#login
R0(config-line)#exit


### Criptografando a senha
```sh
R0#configure terminal
R0(config)#service password-encryption 
R0(config)#end
```
