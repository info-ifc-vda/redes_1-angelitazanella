### Configurando as interfaces dos dispositivos
```sh
R0(config)#interface [nome_da_interface]
R0(config-if)#description [texto de descrição]
R0(config-if)#ip address [endereço_ipv4] [máscara_de_subrede]
R0(config-if)#ipv6 address [endereço_ipv6/prefixo]
R0(config-if)#no shutdown 
```
### Exemplo
```sh
R0(config)#interface GigabitEthernet 0/0/1
R0(config-if)#description WAN
R0(config-if)#ip address 200.200.200.1 255.255.255.252
R0(config-if)#ipv6 address 2001:db8:acad:2::1/64
R0(config-if)#no shutdown 
```


### Verificando as configurações de endereço IP
```sh
R0#show ip interface brief 
R0#show ipv6 interface brief 

R0#show interfaces 
R0#show ip interfaces 
R0#show ipv6 interfaces 
```
