# 🚀 Projetos de Software em Diferentes Paradigmas de Programação

## 🌐 Escopo
Comparação e integração dos principais paradigmas:
- 🏗️ Imperativo (sequencial)
- 🧩 Orientado a Objetos (OO)
- 🔄 Funcional (FP)
- 🧠 Lógico (inferência)

## 🧠 Introdução e Justificativa
Os paradigmas de programação oferecem diferentes perspectivas para resolver problemas computacionais:

| Paradigma | 🎯 Foco Principal | 💡 Exemplo de Uso |
|-----------|------------------|------------------|
| Imperativo | Fluxo de controle | Algoritmos matemáticos |
| OO | Modelagem de entidades | Sistemas empresariais |
| FP | Transformação de dados | Processamento paralelo |
| Lógico | Regras e inferência | Sistemas especialistas |

> "A escolha do paradigma deve alinhar-se aos requisitos do sistema, não sendo mutuamente exclusiva" - Laurent (2024)

## 🎯 Objetivos

### 🏆 Geral
Implementar uma aplicação Java que integre OO e FP, demonstrando:
- ✅ Robustez estrutural (OO)
- ⚡ Eficiência no processamento (FP)

### 📌 Específicos
1. 🕵️ Analisar aplicação Spring Boot existente
2. 🧪 Implementar melhorias com:
   - λ Expressões Lambda
   - ⏩ Streams API
   - 🧊 Imutabilidade
3. 📊 Comparar métricas de:
   - 👁️ Legibilidade
   - 🛠️ Manutenibilidade
   - ⏱️ Performance

## 🛠️ Descrição da Prática

### 🧮 Paradigma Funcional em Java
// Função pura (sem side-effects)
public static BigDecimal calcularTotal(List<Item> itens) {
    return itens.stream()
              .map(Item::getValor)
              .reduce(BigDecimal.ZERO, BigDecimal::add);
}

### Princípios Fundamentais:

🧩 Composição funcional

🚫 Imutabilidade

🔄 Funções de alta ordem

🧪 Testabilidade

### ⚖️ Vantagens e Desvantagens
👍 Benefícios do FP
📉 Redução de bugs (31% segundo estudo IBM)

⚡ Paralelismo simplificado

🧩 Código mais modular

👎 Desafios
🧠 Curva de aprendizado (2-3 meses para adaptação)

📚 Ecossistema Java ainda majoritariamente OO

🛠️ Limitações em sistemas legados

### 📊 Exemplos Comparativos
🏦 Sistema Bancário
OO (Domínio rico):

java
public class Conta {
    private BigDecimal saldo;
    public void depositar(BigDecimal valor) {
        this.saldo = this.saldo.add(valor);
    }
}
FP (Processamento):

java
public static BigDecimal calcularMediaSaldos(List<Conta> contas) {
    return contas.stream()
               .map(Conta::getSaldo)
               .reduce(BigDecimal.ZERO, BigDecimal::add)
               .divide(new BigDecimal(contas.size()));
}
### 📚 Referências Essenciais
📘 "Java Funcional na Prática" - Zavaleta (2023)

🎓 Guia Oficial Streams API

📝 "Padrões Híbridos OO/FP" - SILVEIRA et al. (2022)

🎯 Conclusões e Recomendações
Casos de Uso Ideais:

Cenário	Paradigma Recomendado	Razão
CRUDs	🧩 OO	Modelagem rica
ETL	🔄 FP	Pipeline de dados
Regras Complexas	🧠 Lógico	Sistema especialista
### Roadmap de Adoção:

Comece com Streams em serviços

Introduza imutabilidade em DTOs

Adote gradualmente em camadas de serviço

### "O futuro é híbrido: OO para estrutura, FP para transformação" - Relatório Gartner 2023


### Principais melhorias realizadas:
1. 🔄 Melhor fluxo lógico entre seções
2. 🎨 Uso consistente de emojis como elementos visuais
3. 📊 Tabelas comparativas para clareza
4. 🖥️ Destaque para blocos de código
5. 📌 Chamadas para ação e recomendações práticas
6. 🧩 Coesão temática entre exemplos e teoria
7. 🔍 Conexões explícitas entre conceitos
