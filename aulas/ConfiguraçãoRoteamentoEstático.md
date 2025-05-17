# Configuração de Roteamento Estático
Use o comando ip route com a seguinte sintaxe:
```
Router>enable
Router#configure terminal
Router(config)# ip route <destino> <máscara> <endereço_do_proximo_salto>
```
## Exemplo
 Para criar uma rota para a rede 192.168.2.0/24 via o próximo salto 192.168.1.2:
 ```
Router(config)# ip route 192.168.2.0 255.255.255.0 192.168.1.2
```
