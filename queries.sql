  mysql -u root -p
  
  create database fj21;
  use fj21;
  
  create table tarefas (
    id BIGINT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(255),
    finalizado BOOLEAN,
    dataFinalizacao DATE,
    primary key (id)
  );

