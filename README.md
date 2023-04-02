# Backend-Ruby-Locaweb

Codificação de Backend programado em Ruby on Rails e Json para gerenciamento de Planos de hospedagem e Cloud VPS 
foi implementado com os principais verbos para consulta de Endpoints.
Ele manipula os dados de máquinas virtuais na nuvem, chamado de PlanosController e CloudVpsController. Ele permite que sejam realizadas operações CRUD (criação, leitura, atualização e exclusão) nas máquinas virtuais em um banco de dados.

* Endpoints
* GET /planos
* Retorna todos os planos de hospedagem.

* Resposta
200 OK em caso de sucesso.

[
  {
    "id": 1,
    "nome": "Plano básico",
    "espaco_em_disco": "10 GB",
    "transferencia": "100 GB",
    "contas_de_email": 5,
    "preco": 9.99
  },
  {
    "id": 2,
    "nome": "Plano intermediário",
    "espaco_em_disco": "50 GB",
    "transferencia": "500 GB",
    "contas_de_email": 20,
    "preco": 29.99
  },
  {
    "id": 3,
    "nome": "Plano avançado",
    "espaco_em_disco": "100 GB",
    "transferencia": "1 TB",
    "contas_de_email": 50,
    "preco": 59.99
  }
]

* GET /planos/:id
* Retorna um plano de hospedagem específico.

* Parâmetros
* id - ID do plano de hospedagem a ser retornado.
Resposta
200 OK em caso de sucesso.

{
  "id": 1,
  "nome": "Plano básico",
  "espaco_em_disco": "10 GB",
  "transferencia": "100 GB",
  "contas_de_email": 5,
  "preco": 9.99
}



* POST /planos
* Cria um novo plano de hospedagem.

* Parâmetros
* nome - Nome do plano de hospedagem (obrigatório).
* espaco_em_disco - Espaço em disco disponível (obrigatório).
* transferencia - Transferência de dados mensal (obrigatório).
* contas_de_email - Número de contas de e-mail permitidas (opcional).
* preco - Preço mensal (obrigatório).
Resposta
201 Created em caso de sucesso.

{
  "id": 4,
  "nome": "Plano empresarial",
  "espaco_em_disco": "250 GB",
  "transferencia": "5 TB",
  "contas_de_email": 100,
  "preco": 99.99
}


* PUT /planos/:id
* Atualiza um plano de hospedagem existente.

* Parâmetros
* id - ID do plano de hospedagem a ser atualizado.
*  nome - Nome do plano de hospedagem (opcional).
* espaco_em_disco - Espaço em disco disponível (opcional).
* transferencia - Transferência de dados mensal (opcional).
* contas_de_email - Número de contas de e-mail permitidas (opcional).
* preco - Preço mensal (opcional).
Resposta
200 OK em caso de sucesso.

{
  "id": 3,
  "nome": "Plano avançado",
  "espaco_em_disco": "200 GB",
  "transferencia": "2 TB",
  "contas_de_email": 100,"
  }

## Consulta de Endpoints para CloudVps
* GET /cloudvps
* Retorna uma lista de todas as máquinas virtuais na nuvem.

* Parâmetros

Resposta
Código de status: 200 OK

Corpo da resposta (exemplo):

[
  {
    "id": 1,
    "plan_id": 1,
    "hostname": "cloudvps-01",
    "password": "s3cr3t",
    "email": "user@exemplo.com",
    "phone": "+55 11 1234-5678"
  },
  {
    "id": 2,
    "plan_id": 2,
    "hostname": "cloudvps-02",
    "password": "p@ssw0rd",
    "email": "user2@exemplo.com",
    "phone": "+55 11 8765-4321"
  }
]



* GET /cloudvps/:id
* Retorna uma única máquina virtual na nuvem.

* Parâmetros
* id - ID da máquina virtual (inteiro).
Resposta
Código de status: 200 OK

Corpo da resposta (exemplo):

{
  "id": 1,
  "plan_id": 1,
  "hostname": "cloudvps-01",
  "password": "s3cr3t",
  "email": "user@example.com",
  "phone": "+55 11 1234-5678"
}


* POST /cloudvps
* Cria uma nova máquina virtual na nuvem.

* Parâmetros
cloudvps - Objeto JSON com os dados da máquina virtual.

* plan_id - ID do plano de hospedagem (inteiro).
* hostname - Nome da máquina virtual (string).
* password - Senha da máquina virtual (string).
* email - Endereço de e-mail do proprietário da máquina virtual (string).
* phone - Número de telefone do proprietário da máquina virtual (string).
Resposta
Código de status: 201 Created

Corpo da resposta (exemplo):

{
  "id": 3,
  "plan_id": 2,
  "hostname": "cloudvps-03",
  "password": "p@ssw0rd",
  "email": "user3@example.com",
  "phone": "+55 11 1111-2222"
}

* ...
