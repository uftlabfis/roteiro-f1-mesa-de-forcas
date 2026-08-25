# Adição de Vetores — Mesa de Forças (LABFIS/UFT)

> 🌐 **Acesse a versão web do roteiro:** [https://uftlabfis.github.io/uftlabfis-roteiro-adicao-vetores/](https://uftlabfis.github.io/uftlabfis-roteiro-adicao-vetores/)

Este repositório contém o código-fonte em **Quarto Markdown (`.qmd`)** do roteiro experimental da prática **"Adição de Vetores: Mesa de Forças"**, desenvolvida para as disciplinas de Física Experimental do **Laboratório de Física (LABFIS)** do Câmpus Universitário de Palmas, da Universidade Federal do Tocantins (UFT).

---

## 🎯 Objetivos da Prática Experimental

Nesta atividade prática, os estudantes exploram a natureza vetorial da força e os princípios de equilíbrio estático através dos seguintes objetivos:

* Compreender o conceito de força resultante ($\vec{R} = \sum \vec{F}_i$) e a condição de equilíbrio ($\sum \vec{F}_i = \vec{0}$).
* Determinar a força resultante através dos métodos analítico (decomposição cartesiana em $x$ e $y$) e gráfico (regra do paralelogramo e polígono de vetores).
* Verificar experimentalmente a força de equilíbrio (equilibrante) utilizando o conjunto da mesa de forças com massas suspensas e roldanas graduadas.
* Analisar o percentual de erro entre os valores calculados teoricamente e os dados obtidos experimentalmente no laboratório.

---

## 🎨 Identidade Visual e Estilo

O roteiro segue rigorosamente a paleta de cores e o padrão de design oficial da marca do **LABFIS/UFT**:

* **Azul Petróleo (`#004A80`):** Aplicado aos títulos de seções principais (`h1`, `h2`, `h3`) e cabeçalhos de tabelas.
* **Verde Esmeralda (`#008577`):** Aplicado aos links, bordas de acentuação e destaques do roteiro.
* **Dourado (`#FDB913`) / Cinza (`#666666`):** Utilizados em detalhes estruturais e bordas secundárias.
* **Tipografia e Texto:** Texto dos parágrafos justificado com hifenização automática para melhor leitura digital e impressa.

---

## 🧩 Extensão Quarto (`uftlabfis`)

Para a geração dos documentos em PDF para impressão e distribuição aos estudantes, é utilizada a extensão customizada **`uftlabfis`**. Ela utiliza o **Typst** como motor de renderização, garantindo uma compilação ultra-rápida, diagramação acadêmica moderna e alinhamento total à identidade visual do laboratório na versão impressa.

---

## 📂 Estrutura do Repositório

| Arquivo / Diretório | Descrição |
| :--- | :--- |
| `index.qmd` | Arquivo principal contendo o texto, equações e instruções do roteiro experimental. |
| `_quarto.yml` | Arquivo de configuração do projeto Quarto (metadados, navegação e formatos de saída). |
| `_extensions/uftlabfis` | Extensão Typst contendo os modelos e folhas de estilo para a compilação em PDF. |
| `assets/` / `img/` | Imagens do equipamento (mesa de forças, dinamômetros, transferidor) e diagramas vetoriais. |
| `styles.css` | Estilos CSS customizados para a versão web do roteiro. |

---

## 🚀 Como Executar o Projeto Localmente

Para editar, visualizar ou compilar este roteiro em sua máquina local, certifique-se de ter o [Quarto CLI](https://quarto.org/) instalado e execute os comandos abaixo:

```bash
# 1. Visualização Web em Tempo Real
quarto preview index.qmd

# 2. Renderização nos Formatos Finais (HTML + PDF)
quarto render index.qmd --to html
quarto render index.qmd --to uftlabfis-pdf