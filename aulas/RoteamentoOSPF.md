# Configurando Roteamento Dinâmico com OSPF

Para configurar roteamento dinâmico usando OSPF em um roteador Cisco no Packet Tracer, siga os passos abaixo:

1. Acesse o roteador:

Clique em "CLI" no roteador no Packet Tracer para acessar o modo de linha de comando.

2. Entre no modo de configuração global:
```
enable
configure terminal
```

3. Ative o OSPF:

- Inicie a configuração do OSPF com um processo específico (o número do processo é local ao roteador):
```
router ospf <ID_do_processo>
```

- Exemplo:
```
router ospf 1
```

4. Declare as redes que participarão do OSPF:

- Use o comando network para especificar quais redes serão anunciadas e a área OSPF. Use a máscara curinga (wildcard mask) ao invés de uma máscara de sub-rede.
```
network <endereço_da_rede> <máscara_curinga> area <número_da_área>
```

- Exemplo:
```
network 192.168.1.0 0.0.0.255 area 0
```

5. Finalizar e salvar a configuração:

- Saia do modo de configuração e salve as alterações:
```
end
copy running-config startup-config
```


## Resumo
- router ospf : Inicia o processo OSPF.
- network <endereço_da_rede> <máscara_curinga> area <número_da_área>: Configura as redes do OSPF.
- copy running-config startup-config: Salva a configuração atual.
