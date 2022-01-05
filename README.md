[![Build Status](https://app.travis-ci.com/gustavomgama/Desafio-Socinal.svg?branch=master)](https://app.travis-ci.com/gustavomgama/Desafio-Socinal)


Um simples API para amarzenar, consultar e organizar frutas por nome, carbohidratos, proteína e gordura.

- `/fruits?limit=n`: Lista todos os registros salvos, limitando a quantidade retornada caso o parâmetro `limit` seja enviado.
- `/fruits/:name`: Exibe um único registro, baseando-se no nome enviado.
- `/service_fruits/:name`: Busca um registro externo no serviço, fazendo uma cópia no banco de dados, e por fim retornando na resposta o registro salvo.

- O projeto já está hospedo no heroku então podemos ver funcionando usando a url de produção

- Buscando um registro inexistente no banco:
```sh
curl https://desafio-socinal-api.herokuapp.com/fruits/Banana -H "Authorization: Basic " -w "%{http_code}"
Resposta esperada sem o token: 401 Unathorized
Resposta esparada com token: 404 Not Found
```

- Buscando um registro externo e fazendo uma cópia:
```sh
curl -s https://desafio-socinal-api.herokuapp.com/service_fruits/Banana -H "Authorization: Basic YWRtaW46YWRtaW4="
```

- Consultando o registro previamente salvo:
```sh
curl -s https://desafio-socinal-api.herokuapp.com/fruits/Banana -H "Authorization: Basic YWRtaW46YWRtaW4="
```

- Listando todos os registros salvos:
```sh
curl -s https://desafio-socinal-api.herokuapp.com/fruits -H "Authorization: Basic YWRtaW46YWRtaW4="
```

- Listando todos os registros salvos, limitando a quantidade em 2:
```sh
curl -s https://desafio-socinal-api.herokuapp.com/fruits?limit=2 -H "Authorization: Basic YWRtaW46YWRtaW4="
```
