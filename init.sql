-- Criar o usuário 'root' com senha 'root'
CREATE USER root WITH ENCRYPTED PASSWORD 'root';

-- Conceder permissões ao usuário 'root' no banco 'dev_db'
GRANT ALL PRIVILEGES ON DATABASE dev_db TO root;

CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE EXTENSION IF NOT EXISTS vector;