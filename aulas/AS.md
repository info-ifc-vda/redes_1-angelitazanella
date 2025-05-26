# Sistemas Autônomos e seus Identificadores: Fundamentos da Internet Global
## Introdução
A Internet, em sua essência, não é uma rede única e monolítica, mas sim uma complexa interconexão de milhares de redes independentes que cooperam entre si. Estas redes independentes são chamadas de Sistemas Autônomos (AS - *Autonomous Systems*) e cada uma possui um identificador único conhecido como Número de Sistema Autônomo (ASN - *Autonomous System Number*). Compreender estes conceitos é fundamental para entender a arquitetura da Internet moderna e como o tráfego de dados flui globalmente.

## Sistemas Autônomos: A Base Estrutural da Internet
### Definição e Conceito
Um Sistema Autônomo (AS) é formalmente definido como um conjunto de redes IP sob o controle de uma única entidade administrativa que apresenta uma política de roteamento coerente e unificada para a Internet. Em termos mais simples, é uma rede ou conjunto de redes gerenciadas por uma única organização, como um provedor de Internet, uma universidade, uma grande empresa ou um órgão governamental.

O termo "autônomo" é crucial nesta definição, pois indica que:
- **Independência administrativa:** Cada AS é gerenciado independentemente, tomando suas próprias decisões sobre configuração interna, políticas de segurança e estratégias de conectividade.
- **Política de roteamento única:** O AS determina como o tráfego entra e sai de suas redes, estabelecendo regras consistentes que refletem seus objetivos técnicos e comerciais.
- **Autonomia técnica:** Cada AS decide quais protocolos de roteamento interno utilizar, como estruturar sua rede e como implementar redundância e segurança.

### Características Essenciais de um Sistema Autônomo
Para ser considerado um Sistema Autônomo, uma rede deve apresentar algumas características fundamentais:
- **Múltiplos prefixos IP:** Geralmente controla vários blocos de endereços IP (prefixos).
- **Conexões externas:** Mantém conexões com outros Sistemas Autônomos, seja para troca de tráfego direta (peering) ou para compra de conectividade (trânsito).
- **Política de roteamento definida:** Possui regras claras sobre quais rotas aceita de outros ASs e quais rotas anuncia para eles.
- **Infraestrutura própria:** Controla sua própria infraestrutura de rede, incluindo roteadores, switches e enlaces.

### Tipos de Sistemas Autônomos
Os Sistemas Autônomos podem ser classificados em diferentes categorias, dependendo de sua função e posição na hierarquia da Internet:

1. **AS de Trânsito (Transit AS)**
   - Transporta tráfego entre outros ASs não diretamente conectados. 
   - Exemplos: grandes provedores de backbone como CLARO S.A./Embratel, ALGAR TELECOM S/A, TELEFÔNICA BRASIL S.A (Vivo), CLARO NXT TELECOMUNICACOES LTDA (NET), Telemar Norte Leste S.A. (Oi), ASCENTY DATA CENTERS E TELECOMUNICAÇÕES S/A
   - Geralmente possui presença geográfica ampla e conexões com muitos outros ASs

2. **AS Stub (Stub AS)**
    - Conecta-se à Internet através de um ou poucos provedores
    - Não transporta tráfego entre outros ASs
    - Exemplos: empresas de médio porte, instituições educacionais menores
    - Foco em conectividade para seus próprios usuários e serviços
3. **AS Multihomed**
    - Conecta-se a múltiplos provedores para redundância e balanceamento de carga
    - Não serve como trânsito para outros ASs
    - Exemplos: bancos, universidades, empresas com presença online significativa
Busca maior resiliência e controle sobre seu tráfego de entrada e saída

4. **AS de Conteúdo (Content AS)**
    - Foco em distribuir seu próprio conteúdo de forma eficiente
    - Exemplos: Google, Facebook, Netflix, Amazon
    - Geralmente estabelece múltiplas conexões diretas com provedores de acesso
    - Prioriza a entrega eficiente de conteúdo aos usuários finais


### Importância dos Sistemas Autônomos na Arquitetura da Internet
A estrutura baseada em Sistemas Autônomos traz diversos benefícios para a Internet global:
- **Escalabilidade:** Permite que a Internet cresça de forma descentralizada, sem necessidade de coordenação central para todas as decisões de roteamento.
- **Resiliência:** A autonomia administrativa distribui a responsabilidade, evitando pontos únicos de falha.
- **Adaptabilidade:** Cada AS pode evoluir e adaptar sua infraestrutura independentemente, implementando novas tecnologias conforme necessário.
- **Diversidade:** Permite diferentes modelos de negócio e abordagens técnicas coexistirem no mesmo ecossistema global.
- **Localidade:** Facilita a otimização do tráfego local, mantendo-o próximo à sua origem quando possível.


## Números de Sistema Autônomo (ASN): A Identidade Digital das Redes
Para que os Sistemas Autônomos possam interagir na Internet global, cada um precisa de um identificador único. Este é o papel do Número de Sistema Autônomo (ASN).

### O que é um ASN?
Um ASN é um identificador numérico único atribuído a cada Sistema Autônomo participante da Internet global. Funciona como um "documento de identidade" que permite que um AS seja reconhecido inequivocamente por todos os outros ASs durante o processo de roteamento entre domínios.

Em termos práticos, um ASN identifica:
- Provedores de serviços de Internet (ISPs)
- Grandes corporações com presença online significativa
- Instituições acadêmicas com infraestrutura de rede própria
- Órgãos governamentais
- Provedores de conteúdo e serviços em nuvem

### Estrutura e Tipos de ASN
Historicamente, os ASNs eram números de 16 bits, limitando o total possível a 65.536 números. Com o crescimento exponencial da Internet, essa limitação tornou-se problemática, levando à implementação de ASNs de 32 bits. Atualmente, existem dois formatos:

#### ASNs de 16 bits (originais)
- Faixa: 0 a 65.535
- Também chamados de ASNs "regulares" ou "de 2 bytes"
- Foram os primeiros a serem implementados
- Exemplos: AS7018 (AT&T), AS3356 (Level 3), AS2914 (NTT)

#### ASNs de 32 bits (estendidos)
- Faixa: 0 a 4.294.967.295
- Também chamados de ASNs "de 4 bytes"
- Introduzidos pela RFC 6793 para superar a escassez de ASNs de 16 bits
- Podem ser representados em dois formatos:
  - Formato "asplain": número decimal simples (ex: 131072)
  - Formato "asdot": notação com ponto (ex: 2.0, onde 2.0 = 65536 × 2 + 0 = 131072)

A transição para ASNs de 32 bits foi um marco importante na evolução da Internet, similar à transição de IPv4 para IPv6, permitindo acomodar o crescimento contínuo de participantes na rede global.

### ASNs Reservados e Especiais
Alguns ASNs são reservados para fins específicos:
- ASN 0: Reservado, não deve ser usado (RFC 7607)
- ASN 23456: Reservado para transição de ASNs de 16 para 32 bits (RFC 6793)
- ASNs 64496-64511: Reservados para documentação e exemplos
- ASNs 64512-65534: Reservados para uso privado (similar aos IPs privados)
- ASN 65535: Reservado, não deve ser usado
- ASNs 65536-65551: Reservados para documentação de ASNs de 32 bits
- ASNs 4200000000-4294967294: Reservados para uso privado de 32 bits

Os ASNs privados são particularmente úteis em ambientes corporativos complexos, onde múltiplos "sistemas autônomos internos" precisam ser gerenciados sem necessidade de registro público.

### Importância dos ASNs na Internet
#### Identificação Única
Os ASNs garantem que cada rede participante da Internet global tenha um identificador único, evitando ambiguidades no roteamento de tráfego. Esta unicidade é fundamental para o funcionamento correto do roteamento entre domínios.

#### Suporte ao Roteamento Inter-domínio
Os ASNs são fundamentais para o protocolo BGP (Border Gateway Protocol), que é o protocolo de roteamento padrão entre diferentes Sistemas Autônomos. O BGP utiliza os ASNs para:
- Identificar a origem e o caminho das rotas
- Prevenir loops de roteamento (através do atributo AS_PATH)
- Implementar políticas de roteamento
- Tomar decisões sobre o melhor caminho para o tráfego

#### Visibilidade e Presença na Internet
Possuir um ASN próprio permite:
- Independência de provedores específicos (portabilidade de endereços)
- Maior controle sobre políticas de roteamento
- Presença oficial na tabela de roteamento global da Internet
- Capacidade de estabelecer relações de peering diretas com outros ASs
- Maior flexibilidade para implementar redundância e balanceamento de carga

#### Relações entre Sistemas Autônomos
Os ASNs permitem identificar e gerenciar diferentes tipos de relações entre redes:
- **Relação Provedor-Cliente:** Um AS paga outro para obter conectividade à Internet
- **Relação de Peering:** ASs trocam tráfego mutuamente sem custos
- **Relação de Sibling:** ASs pertencentes à mesma organização compartilham tráfego livremente

Estas relações são implementadas através de políticas de roteamento no BGP, utilizando os ASNs como identificadores.

### ASNs no Brasil
O Brasil possui um ecossistema de ASNs bastante desenvolvido e em rápido crescimento:
- **Registro responsável:** LACNIC (através do NIC.br)
- **Quantidade:** Mais de 8.000 ASNs atribuídos a organizações brasileiras
- **Crescimento:** Um dos países com maior crescimento no número de ASNs nos últimos anos
- **Distribuição:** Grande presença de provedores regionais e locais (ISPs)

### Principais Detentores de ASNs no Brasil
- Grandes operadoras de telecomunicações (Claro/Embratel AS4230, Vivo/Telefônica AS10429, Oi/Telemar AS7738, TIM AS26599)
- Provedores regionais de Internet (milhares de ISPs de pequeno e médio porte)
- Universidades e instituições de pesquisa (RNP AS1916, USP AS1251)
- Órgãos governamentais (SERPRO AS10954)
- Empresas de tecnologia e provedores de conteúdo (UOL AS27699, Globo AS27699)

O CEPTRO tem um [mapa](https://mapadeas.ceptro.br/) interessante onde você pode visualizar os ASNs do Brasil.

## Ponto de Troca de Tráfego Brasileiro (IX.br)
O [IX.br](https://ix.br/) (antigo PTT.br) é o maior ponto de troca de tráfego da América Latina e um dos maiores do mundo, conectando mais de 2.000 ASs diferentes. Esta infraestrutura permite que os detentores de ASNs brasileiros troquem tráfego diretamente, melhorando a eficiência e reduzindo custos.

O IX.br possui pontos de presença em mais de 30 localidades no Brasil, contribuindo significativamente para a qualidade e resiliência da Internet brasileira, além de reduzir a dependência de conexões internacionais para tráfego doméstico.

Veja também o mapa dos [PTTs](https://mapadeas.ceptro.br/PTTs) e as estatísticas de tráfego de dados no [Brasil](https://ix.br/agregado/) e de [Santa Catarina](https://ix.br/trafego/agregado/sc)


## Material complementar

Vídeo NIC.BR: [Como funciona a Internet? Parte 2: Sistemas Autônomos, BGP, PTTs.](https://youtu.be/C5qNAT_j63M?si=d1AHVYedMEwLmxk1)

[Veja a explicação da cloudFlare sobre ASs](https://www.cloudflare.com/pt-br/learning/network-layer/what-is-an-autonomous-system/)

Vídeo: [QUEM SÃO os ASN (Autonomous System Number) no BRASIL? | Cortes UPXCast](https://youtu.be/1-kjh-HAt2c?si=CxFTIaYu4qBW4Gj1)

## Bibliografia Recomendada

- KUROSE, Jim; ROSS, Keith W. Redes de computadores e a internet: uma abordagem top-down. 8 ed. Editora Pearson. 2021.
- TANENBAUM, Andrew S.; FEAMSTER, Nick; WETHERALL, David. Redes de Computadores. 6 ed. Bookman e Pearson. 2021.
- MAIA, Luiz P. Arquitetura de redes de computadores. Rio de Janeiro: LTC. 2009.
- RFC 1930: Guidelines for creation, selection, and registration of an Autonomous System (AS).
- RFC 6793: BGP Support for Four-Octet Autonomous System (AS) Number Space.
RFC 7607: Codification of AS 0 Processing.
- HAWKINSON, J.; BATES, T. Guidelines for creation, selection, and registration of an Autonomous System (AS). RFC 1930, 1996.
- HUSTON, G. Exploring Autonomous System Numbers. The Internet Protocol Journal, v. 9, n. 1, 2006.
- BUTLER, K. et al. A Survey of BGP Security Issues and Solutions. Proceedings of the IEEE, v. 98, n. 1, 2010.
- REKHTER, Y.; LI, T.; HARES, S. A Border Gateway Protocol 4 (BGP-4). RFC 4271, 2006.

