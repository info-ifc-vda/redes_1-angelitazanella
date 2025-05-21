# :wave: Redes de Computadores I

## 🤓 Visão geral do curso 

O objetivo deste curso é fornecer uma introdução às redes de computadores, compreendendo como ocorre a comunicação entre um host origem e um host destino. Serão abordados os conceitos relacionados à comunicação salto a salto e comunicação fim a fim. Para facilitar a aprendizagem, forneceremos materiais, simulações e algumas ideias para você começar se aprofundar nos estudos. 🚀

Este curso está em constante desenvolvimento. Envie sugestões e correções para meu email. 

## Sumário
- Introdução às redes. 
    - Conceitos básicos
        - Componentes de redes
        - Topologias
        - Tipos de redes, serviços e protocolos
    - Acesso doméstico e empresarial 						
        - DSL
        - Cabo
        - FTTH
        - Metro Ethernet
        - 5G doméstico 
        - Longa distância		
        - 3G
        - 4G
        - Backbone de Redes
        - PTT
        - Cabos Submarinos
        - ISP							
    - Meios físicos
        - Cabos coaxiais
        - Fibra Óptica
        - Par Trançado
    - Comutação por circuitos e por pacotes. 
    - Multiplexação
    - Atraso, perda e vazão							
    - Modelo OSI e TCP/IP							
- Camada de Enlace
    - Introdução e detecção de erros							
    - Protocolos de acesso ao meio 
        - Protocolos de Acesso Múltiplo 
        - Protocolos de Acesso aleatório
    - LANs comudatas: Endereçamento e ARP				
    - Ethernet							- Redes sem fio
    - VLANs e datacenters	
- Camada de Rede							
    - O protocolo IP							
    - IPv4							
    - NAT							
    - IPv6							
    - Roteamento 
        - Estado de Enlace
        - Vetor de Distância
        - Roteamento Hierárquico
        - [Roteamento Intra-AS (OSPF)](aulas/RoteamentoOSPF.md)						
        - Roteamento Inter-AS (BGP)			
        - Roteamento por Difusão 
        - Roteamento Multicast

## Preparação do ambiente de simulação para ns-2

O `ns2` irá rodar em um contêiner `docker`. Acesse a [documentação](https://docs.docker.com/engine/install/) para instalar o `docker engine`

Baixe o contêiner com o ns2 instalado
```bash
docker pull gelirettore/ns2
```

Crie um diretório chamado `ns2` e acesse-o pelo terminal
```bash
mkdir ns2
cd ns2
```

Baixe o arquivo [run.sh](scripts/run.sh) e coloque-o dentro do diretório `ns2`. Altere suas permissões para permitir execução do script:
```bash
chmod +x run.sh
```

Crie o diretório `simulacoes`. Este será o local onde você irá armazenar toads as simulações.

```bash
mkdir simulacoes
```

