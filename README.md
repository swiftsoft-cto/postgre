# PostgreSQL com pgvector

Ambiente de desenvolvimento PostgreSQL 17 com extensão pgvector, configurado via Docker Compose.

## Requisitos

- [Docker](https://www.docker.com/) e Docker Compose

## Como usar

Subir o banco em segundo plano:

```bash
docker-compose -p postgre up --build -d
```

Parar os containers:

```bash
docker-compose -p postgre down
```

## Conexão

| Campo    | Valor     |
|----------|-----------|
| Host     | localhost |
| Porta    | 5432      |
| Banco    | dev_db    |
| Usuário  | postgres  |
| Senha    | root      |

O usuário `root` (senha `root`) também é criado com permissões no banco `dev_db`.

## Inicialização

O arquivo `init.sql` é executado na primeira subida do container e:

- Cria o usuário `root` com senha `root`
- Concede permissões em `dev_db` ao usuário `root`
- Instala as extensões `pgcrypto` e `vector` (pgvector)

## Recursos

- Memória limitada: 512 MB
- CPUs limitadas: 0.5
- Fuso horário: America/Sao_Paulo
- Política de restart: always
