# Relatório de Experiência em Desenvolvimento com Suporte de IA (Chat-GPT-4o)

## Introdução
Este relatório descreve um experimento empírico utilizando inteligências artificiais (ChatGPT-4o e DeepSeek) para auxiliar no desenvolvimento e migração de um projeto para ReactJS. Foram utilizados prompts pré-definidos para orientar as interações com as IAs.

## Processo e Interações

### Primeiro Prompt: Análise do Código Existente
**Prompt:**  
_"Analise o seguinte código HTML, CSS e JavaScript e descreva suas principais funcionalidades, estrutura e dependências. Identifique possíveis desafios na migração para ReactJS. Aqui está o código:"_

**Resultado:**  
A IA forneceu explicações detalhadas sobre os arquivos (`style.css`, `script.js`, `index.html`) e destacou como principal desafio a migração dos efeitos dinâmicos sem comprometer a performance da aplicação.

---

### Segundo Prompt: Estrutura do Projeto em ReactJS
**Prompt:**  
_"Com base na análise anterior, defina a estrutura de pastas e arquivos para o projeto em ReactJS. Siga as boas práticas de organização, como separação de componentes e uso do padrão de arquivos JSX. Explique a proposta da estrutura sugerida."_

**Resultado:**  
A IA sugeriu uma estrutura modular, baseada em componentes reutilizáveis, conforme as boas práticas de ReactJS (Laurent, 2024). Recomendações incluíram:
- Criação de componentes principais (ex: `Sigilo.jsx`, `InputResponse.jsx`).
- Uso de `useState` e `useEffect` para componentes interativos.
- Implementação da Context API para gerenciamento de estado global, se necessário.

---

### Terceiro Prompt: Conversão de HTML para JSX
**Prompt:**  
_"Converta o seguinte código HTML para JSX, garantindo compatibilidade com ReactJS e corrigindo atributos que precisam ser adaptados, como 'class' para 'className' e 'for' para 'htmlFor'. Aqui está o código HTML:"_

**Observação:**  
Inicialmente, a IA solicitou o envio do arquivo `index.html` novamente, pois o histórico não foi mantido. Após o envio, o código retornado foi centralizado em um único arquivo, exigindo um novo ajuste.

**Ajuste:**  
_"Por gentileza, para a conversão do HTML para JSX, utilize a estrutura sugerida quando foi solicitada a estruturação do projeto para React."_

**Resultado:**  
O código foi separado em diferentes arquivos, seguindo a estrutura de componentes, mas ainda sem o uso de hooks.

---

### Quarto Prompt: Componentes Reutilizáveis
**Prompt:**  
_"Divida o seguinte código JSX em componentes reutilizáveis seguindo boas práticas do React. Identifique quais partes podem ser transformadas em componentes independentes e explique suas responsabilidades. Aqui está o código JSX:"_

**Resultado:**  
Cada componente foi responsabilizado por uma única função, facilitando a manutenção e escalabilidade.

---

### Quinto Prompt: Estilização em ReactJS
**Prompt:**  
_"Sugira a melhor abordagem para estilização do projeto em ReactJS: CSS Modules, Styled Components ou outra recomendada. Converta o seguinte código CSS para a abordagem escolhida, garantindo compatibilidade com os componentes do React. Aqui está o CSS atual:"_

**Observação:**  
A IA sugeriu uma nova estrutura de pastas, divergindo das recomendações anteriores. A equipe optou por não seguir essa sugestão, solicitando que a IA desconsiderasse as alterações propostas.

---

## Resultados e Comparação
Foram obtidas versões estáticas e dinâmicas do projeto, conforme ilustrado nas figuras abaixo:

- **Figura 1:** Versão original (parte estática) vs. Versão obtida com IA (parte estática).  
- **Figura 2:** Comportamento dinâmico (letra correta/incorreta) nas versões original e com IA.

## Referências
LAURENT, L. **A arquitetura baseada em componentes do React: Um estudo de caso.** Disponível em: [https://appmaster.io/pt/blog/arquitetura-baseada-em-componentes-react](https://appmaster.io/pt/blog/arquitetura-baseada-em-componentes-react). 02 de junho, 2024. Acesso em: 28 de março, 2025.

## Considerações sobre Contexto e Hooks Personalizados

### Quando usar Contexto:
- **Compartilhamento global de estado**: Útil para estados compartilhados entre múltiplos componentes.
- **Evita prop drilling**: Elimina a passagem manual de props por vários níveis.
- **Centralização de lógica**: Facilita o gerenciamento de lógica relacionada.

**Vantagens:**  
- Acesso direto ao estado por componentes filhos.  
- Redução de complexidade em árvores de componentes profundas.  

**Desvantagens:**  
- Re-renderizações desnecessárias.  
- Dificuldade de gerenciamento em estados muito grandes.  

---

### Quando usar Hooks Personalizados:
- **Isolamento de lógica específica**: Ideal para lógica usada em poucos componentes.
- **Melhor performance**: Controle preciso de re-renderizações.
- **Reutilização**: Flexibilidade para uso em diferentes contextos.

**Vantagens:**  
- Modularidade e reutilização.  
- Controle granular sobre o estado.  

**Desvantagens:**  
- Recriação de lógica de compartilhamento se o estado for muito utilizado.  
