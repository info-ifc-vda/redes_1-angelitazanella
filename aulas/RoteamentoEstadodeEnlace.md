# Roteamento de Estado de Enlace e o Algoritmo de Dijkstra

## Introdução ao Roteamento de Estado de Enlace

O roteamento de estado de enlace representa uma das abordagens mais sofisticadas e eficientes para determinar rotas em redes de computadores. Diferentemente dos protocolos de vetor de distância (como o RIP), que compartilham apenas informações resumidas sobre a rede, os protocolos de estado de enlace permitem que cada roteador construa um mapa completo e detalhado da topologia da rede.

## Princípios Fundamentais do Estado de Enlace

No roteamento de estado de enlace, cada roteador:

1. **Descobre seus vizinhos**: Identifica todos os roteadores diretamente conectados
2. **Mede o custo dos enlaces**: Determina métricas como atraso, largura de banda ou outros parâmetros para cada conexão
3. **Constrói pacotes LSA (Link-State Advertisement)**: Cria mensagens contendo informações sobre seus vizinhos e os custos associados
4. **Inunda a rede com LSAs**: Distribui essas informações para todos os outros roteadores da rede
5. **Compila um mapa completo**: Utiliza os LSAs recebidos para construir uma representação precisa de toda a topologia da rede

Após compilar este mapa topológico completo, cada roteador executa independentemente um algoritmo de caminho mais curto para determinar as melhores rotas para todos os destinos possíveis. O algoritmo mais comumente utilizado para esta finalidade é o **Algoritmo de Dijkstra**.

## O Algoritmo de Dijkstra: A Base do Roteamento de Estado de Enlace

O algoritmo de Dijkstra, desenvolvido pelo cientista da computação holandês Edsger W. Dijkstra em 1956, é um método eficiente para encontrar os caminhos mais curtos entre um nó de origem e todos os outros nós em um grafo ponderado.

### Como funciona o Algoritmo de Dijkstra

O algoritmo mantém duas estruturas principais:
- Um conjunto de nós cujos caminhos mais curtos já foram determinados (conjunto S)
- Um conjunto de nós cujos caminhos mais curtos ainda estão sendo calculados (conjunto Q)

#### Passos do algoritmo:

1. **Inicialização**:
   - Atribua distância zero ao nó de origem
   - Atribua distância infinita a todos os outros nós
   - Marque todos os nós como não visitados (coloque-os em Q)

2. **Iteração**:
   - Selecione o nó não visitado com a menor distância (inicialmente o nó de origem)
   - Marque este nó como visitado (remova-o de Q e adicione-o a S)
   - Para cada vizinho deste nó:
     - Calcule a distância tentativa (distância atual do nó + custo do enlace até o vizinho)
     - Se a distância tentativa for menor que a distância atual do vizinho, atualize a distância do vizinho

3. **Repetição**:
   - Repita o passo 2 até que todos os nós tenham sido visitados (Q esteja vazio)

4. **Resultado**:
   - Ao final, cada nó terá associado a ele a distância do caminho mais curto a partir do nó de origem
   - A sequência de nós que forma cada caminho mais curto também pode ser reconstruída

### Exemplo Prático do Algoritmo de Dijkstra

Considere a seguinte topologia de rede, onde os números representam o custo de cada enlace:
