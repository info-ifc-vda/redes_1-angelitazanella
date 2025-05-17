# Protocolos de Roteamento: Fundamentos e Aplicações



## O que são Protocolos de Roteamento?

Protocolos de roteamento são conjuntos de regras e procedimentos que permitem aos roteadores comunicarem-se entre si, compartilhando informações sobre as redes às quais estão conectados. Estes protocolos são responsáveis por determinar os melhores caminhos para o tráfego de dados entre diferentes redes.

Imagine a Internet como um sistema rodoviário global extremamente complexo. Os protocolos de roteamento seriam equivalentes aos sistemas de navegação GPS que determinam as **melhores rotas** entre dois pontos, considerando diversos fatores como congestionamentos, obras e acidentes.

## Objetivo dos Protocolos de Roteamento

O principal objetivo de um protocolo de roteamento é permitir que os roteadores construam e mantenham tabelas de roteamento precisas e atualizadas. Estas tabelas contêm informações sobre como alcançar diferentes redes de destino e são consultadas sempre que um pacote de dados precisa ser encaminhado.

Os protocolos de roteamento buscam:

- **Descobrir redes**: Identificar todas as redes disponíveis na topologia
- **Manter informações atualizadas**: Adaptar-se rapidamente a mudanças na rede
- **Escolher os melhores caminhos**: Selecionar rotas otimizadas baseadas em critérios específicos
- **Convergir rapidamente**: Atualizar todas as tabelas de roteamento quando ocorrem mudanças na topologia da rede

## Caminhos em Redes: Conceito e Importância

Em redes de computadores, um **caminho** (ou rota) é a sequência de roteadores e enlaces que um pacote deve atravessar para chegar do seu ponto de origem até seu destino final.

Os caminhos são fundamentais porque:

1. **Determinam a eficiência da comunicação**: Um caminho bem escolhido minimiza atrasos e perdas de pacotes
2. **Afetam o desempenho da rede**: Caminhos congestionados podem causar lentidão e timeout
3. **Impactam a resiliência**: Múltiplos caminhos alternativos garantem que a comunicação continue mesmo quando há falhas
4. **Influenciam o custo operacional**: Alguns caminhos podem ter custos financeiros diferentes associados ao seu uso

## O que caracteriza um "Bom Caminho"?

Um "bom caminho" em redes é aquele que otimiza um ou mais parâmetros relevantes para a comunicação. Os protocolos de roteamento utilizam diferentes métricas para determinar a qualidade de um caminho:

### Métricas comuns para avaliar caminhos:

- **Número de saltos (hop count)**: Quantidade de roteadores que um pacote precisa atravessar
- **Largura de banda**: Capacidade de transmissão dos enlaces no caminho
- **Atraso (delay)**: Tempo necessário para um pacote percorrer o caminho
- **Confiabilidade**: Probabilidade de falha nos enlaces do caminho
- **Carga**: Nível de congestionamento atual dos enlaces
- **Custo**: Valor administrativo atribuído a um caminho (pode refletir custos financeiros reais)

Um protocolo de roteamento pode considerar uma única métrica (como o RIP, que usa apenas contagem de saltos) ou combinar várias métricas em um cálculo mais complexo (como o EIGRP, que considera largura de banda, atraso, confiabilidade e carga).

## Tipos Principais de Protocolos de Roteamento

### 1. Protocolos de Gateway Interior (IGP)
Utilizados dentro de um sistema autônomo (como a rede de uma empresa):
- **Protocolos de Vetor de Distância**: RIP, IGRP
- **Protocolos de Estado de Enlace**: OSPF, IS-IS
- **Protocolos Híbridos**: EIGRP

### 2. Protocolos de Gateway Exterior (EGP)
Utilizados entre sistemas autônomos diferentes:
- **BGP (Border Gateway Protocol)**: O principal protocolo usado na internet global

## Conclusão

Os protocolos de roteamento são componentes essenciais da infraestrutura de rede moderna, permitindo que bilhões de dispositivos se comuniquem de forma eficiente através de uma rede global extremamente complexa. Compreender como esses protocolos funcionam e como eles determinam os melhores caminhos é fundamental para qualquer profissional que trabalhe com redes de computadores.

Nas próximas aulas, exploraremos em detalhes os principais protocolos de roteamento, suas características específicas, vantagens e limitações, além de realizar atividades práticas de configuração.

---

**Referências Bibliográficas:**

- TANENBAUM, Andrew S.; WETHERALL, David. Redes de Computadores. 5ª ed. São Paulo: Pearson, 2011.
- KUROSE, James F.; ROSS, Keith W. Redes de Computadores e a Internet: Uma Abordagem Top-Down. 6ª ed. São Paulo: Pearson, 2013.
- FOROUZAN, Behrouz A. Comunicação de Dados e Redes de Computadores. 4ª ed. São Paulo: McGraw-Hill, 2008.
- COMER, Douglas E. Interligação de Redes com TCP/IP. 6ª ed. Rio de Janeiro: Elsevier, 2015.
