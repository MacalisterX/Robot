# 🤖 Automação de Testes Web com Robot Framework

Este repositório contém uma suite de testes automatizados E2E (End-to-End) para a aplicação web [Swag Labs](https://www.saucedemo.com/), utilizando o **Robot Framework** e **SeleniumLibrary**. O projeto foi desenhado com foco em boas práticas de mercado, utilizando a escrita orientada a comportamento (**BDD**) e a separação de responsabilidades (Keyword-Driven/Page Objects).

## 🛠️ Tecnologias Utilizadas
* **Robot Framework:** Framework genérico de automação.
* **SeleniumLibrary:** Biblioteca para automação web.
* **Python:** Linguagem base de execução.
* **Arquitetura BDD:** Escrita de cenários em *Dado-Quando-Então*.

## 📂 Estrutura do Projeto
- `tests/`: Contém os cenários de teste escritos em formato BDD legível.
- `resources/`: Contém a implementação técnica das *Keywords* e variáveis, separando a lógica da interface de testes.

## 🚀 Como executar este projeto localmente

### Pré-requisitos
Certifique-se de que tem o Python instalado e configure o ambiente:
```bash
# Instalar o Robot Framework
pip install robotframework

# Instalar a biblioteca Selenium
pip install robotframework-seleniumlibrary
