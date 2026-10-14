# Modelação e Otimização Linear (LP / MIP)

Resolução e modelação matemática de problemas reais de **Investigação Operacional (IO)** através de **Programação Linear (PL)** e **Programação Linear Inteira/Mista (PLI/MIP)** em formato padrão `.lp` (compatível com solvers como `lp_solve`, `GLPK` e `CPLEX`).

Projeto desenvolvido no âmbito da unidade curricular de Investigação Operacional (LEI) da **Universidade do Minho**.

---

## 📐 Problemas Modelados

### 1. Planeamento Agregado de Produção (`companhia.lp`)
- **Cenário**: Uma empresa industrial necessita de calendarizar a produção de 2 linhas de produtos ao longo de um horizonte de planeamento de 3 meses para satisfazer procuras flutuantes, minimizando os custos operacionais totais.
- **Restrições Consideradas**:
  - Capacidade máxima de produção em horário normal e horário extraordinário.
  - Limitações de capacidade física e financeira de armazenamento em armazém.
  - Balanço de inventário mês a mês (stock inicial nulo e política de stock final zero).
  - Condições de não-negatividade e integridade nas quantidades produzidas.

### 2. Otimização de Rede de Transporte Térmico (`grupo3.lp`)
- **Cenário**: Transporte ótimo de mercadorias sensíveis entre múltiplos nós logísticos de um armazém (do nó inicial A ao terminal F).
- **Restrições Consideradas**:
  - Restrições estritas de choque térmico (limitação de variações térmicas $\le 3^\circ\text{C}$).
  - Conservação de fluxo nos nós intermediários (Lei de Kirchhoff de fluxos em grafos).
  - Minimização do custo ou distância total ponderada na rede de transporte.

---

## 📁 Estrutura dos Modelos

Os ficheiros de especificação matemática encontram-se na pasta `modelos/`:

```text
modelos/
├── companhia.lp    # Formulação do problema de produção e armazenamento
└── grupo3.lp       # Formulação do problema de transporte sob restrições térmicas
```

---

## 🚀 Como Executar os Modelos com `lp_solve`

### Pré-requisitos
Instalar o solver `lp_solve` (disponível via gestor de pacotes na maioria dos sistemas):
```bash
# Ubuntu / Debian
sudo apt install lp-solve

# macOS (Homebrew)
brew install lp_solve
```

### Resolução
Para encontrar a solução ótima e obter os valores das variáveis de decisão e das variáveis duais (preços sombra):

```bash
# Executar o modelo de produção:
lp_solve modelos/companhia.lp

# Executar o modelo de transporte em rede:
lp_solve modelos/grupo3.lp
```

---

## 📄 Relatório Técnico Completo

Para uma descrição formal completa das variáveis de decisão, tabelas de coeficientes técnicos, formulação matemática e análise de sensibilidade e dualidade:
- [Relatório de Investigação Operacional (DOCX)](Relatorio_Investigacao_Operacional.docx)
