# language: pt
Funcionalidade: Busca de CEP

  Posso realizar a consulta de um CEP válido
  Todas as consultas realizadas devem ser armazenadas no histórico

  Cenário: Posso realizar uma consulta de um CEP válido
    Dado que estou na tela de consulta de CEP
    Quando digitar um CEP válido
    E tocar no botão buscar
    Então devo visualizar o resultado da busca

  Cenário: Posso visualizar o histórico de consultas de CEP
    Dado que estou na tela de consulta de CEP
    Quando tocar no botão de consultas anteriores
    Então devo visualizar o histórico de buscas