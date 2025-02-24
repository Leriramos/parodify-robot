## Automatizando Testes de Player de Músicas com Robot Framework

Este repositório contém um conjunto de testes automatizados para um player de música utilizando o Robot Framework com a biblioteca Browser. Os testes verificam a funcionalidade de reprodução de músicas no site Parodify.

## 🚀 Tecnologias Utilizadas

Robot Framework: Framework de automação de testes

Browser Library: Biblioteca para interação com navegadores

JavaScript (Playwright Mocking): Simulação de respostas para requisições da API


## 🔧 Configuração do Ambiente

Instale o Python

Instale o Robot Framework e a Browser Library:

pip install robotframework-browser

Instale as dependências do Playwright:

rfbrowser init

## ▶️ Como Executar os Testes

Para rodar os testes, utilize o comando:

robot -d ./logs player.robot

## 📝 Sobre os Testes

O teste Deve tocar uma música verifica se uma música pode ser reproduzida corretamente. Ele segue os seguintes passos:

Simula uma API que retorna a música "Smells Like Test Script".

Acessa o site do Parodify.

Confirma a presença do usuário logado.

Identifica e clica no botão de play.

Verifica se o botão de pause aparece, indicando que a reprodução começou.

Aguarda a aparição do botão de play novamente.

## 🤝 Contribuição

Sinta-se à vontade para contribuir! Abra um Pull Request ou relate problemas na aba Issues.