- Script MySQL gerado pelo MySQL Workbench
- Segunda - feira, 15 de março, 14:34:23 2021
- Modelo: Nova Versão do Modelo: 1.0
- Engenharia avançada do MySQL Workbench

SET @OLD_UNIQUE_CHECKS = @@ UNIQUE_CHECKS, UNIQUE_CHECKS = 0 ;
SET @OLD_FOREIGN_KEY_CHECKS = @@ FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 ;
SET @OLD_SQL_MODE = @@ SQL_MODE, SQL_MODE = ' ONLY_FULL_GROUP_BY, STRICT_TRANS_TABLES, NO_ZERO_IN_DATE, NO_ZERO_DATE, ERROR_FOR_DIVISION_BY_ZERO, NO_ENGINE_SUBSTITUTION ' ;

- ------------------------------------------------ -----
- Esquema db_localixo
- ------------------------------------------------ -----

- ------------------------------------------------ -----
- Esquema db_localixo
- ------------------------------------------------ -----
CRIAR  SCHEMA  SE NÃO EXISTE ` db_localixo ` default Caráter SET utf8;
USO ` db_localixo ` ;

- ------------------------------------------------ -----
- Tabela `db_localixo`` tb_categoria`
- ------------------------------------------------ -----
CRIAR  TABELA  SE NÃO EXISTE ` db_localixo ` . ` Tb_categoria ` (
  ` Id `  INT  NOT NULL AUTO_INCREMENT,
  ` Nomo `  VARCHAR ( 45 ) NULL ,
  ` Tipo `  VARCHAR ( 45 ) NULL ,
  ` Descarte `  VARCHAR ( 45 ) NULL ,
  PRIMÁRIA CHAVE ( ` ID ` ))
ENGINE = InnoDB;


- ------------------------------------------------ -----
- Tabela `db_localixo`` tb_usuario`
- ------------------------------------------------ -----
CRIAR  TABELA  SE NÃO EXISTE ` db_localixo ` . ` Tb_usuario ` (
  ` Id `  INT  NOT NULL ,
  ` Nomo `  VARCHAR ( 50 ) não nulo ,
  ` Cnpj `  VARCHAR ( 45 ) NULL ,
  ` Email `  VARCHAR ( 45 ) NOT NULL ,
  ` Telefone `  VARCHAR ( 13 ) não nulo ,
  ` Senha `  VARCHAR ( 12 ) não nulo ,
  ` Cep `  VARCHAR ( 10 ) não nulo ,
  ` Bairro `  VARCHAR ( 45 ) não nulo ,
  ` Rua `  VARCHAR ( 45 ) não nulo ,
  ` Numero `  INT  NOT NULL ,
  PRIMÁRIA CHAVE ( ` ID ` ))
ENGINE = InnoDB;


- ------------------------------------------------ -----
- Tabela `db_localixo`` tb_produto`
- ------------------------------------------------ -----
CRIAR  TABELA  SE NÃO EXISTE ` db_localixo ` . ` Tb_produto ` (
  ` Id `  INT  NOT NULL ,
  ` Fk_categoria_id `  INT  NOT NULL ,
  ` Preco `  DECIMAL ( 10 , 2 ) não nulo ,
  ` Quantidade `  DECIMAL ( 10 , 2 ) não nulo ,
  ` Peso `  DECIMAL ( 10 , 2 ) NULL ,
  ` Tipo_prod `  VARCHAR ( 45 ) não nulo ,
  ` Fk_usuario_id `  INT  NOT NULL ,
  ` Compra_venda ` ENUM ( ' Compra ' , ' Venda ' ) NOT NULL ,
  PRIMÁRIA CHAVE ( ` ID ` , ` fk_categoria_id ` , ` fk_usuario_id ` ),
  ÍNDICE ` fk_tb_produto_tb_categoria_idx ` ( ` fk_categoria_id `  ASC ) VISÍVEL,
  ÍNDICE ` fk_tb_produto_tb_usuario1_idx ` ( ` fk_usuario_id `  ASC ) VISÍVEL,
  CONSTRAINT  ` fk_tb_produto_tb_categoria `
    EXTERNA CHAVE ( ` fk_categoria_id ` )
    Referências  ` db_localixo ` . ` Tb_categoria ` ( ` ID ` )
    AO EXCLUIR, NENHUMA AÇÃO
    NA  ATUALIZAÇÃO, NENHUMA AÇÃO,
  RESTRIÇÃO  ` fk_tb_produto_tb_usuario1 `
    EXTERNA CHAVE ( ` fk_usuario_id ` )
    Referências  ` db_localixo ` . ` Tb_usuario ` ( ` ID ` )
    AO EXCLUIR, NENHUMA AÇÃO
    NA  ATUALIZAÇÃO, NENHUMA AÇÃO)
ENGINE = InnoDB;


- ------------------------------------------------ -----
- Tabela `db_localixo`` tb_avaliacao`
- ------------------------------------------------ -----
CRIAR  TABELA  SE NÃO EXISTE ` db_localixo ` . ` Tb_avaliacao ` (
  ` Id `  INT  NOT NULL ,
  ` Fk_usuario_id `  INT  NOT NULL ,
  ` Avaliação `  INT  NULL ,
  ` Comentario `  VARCHAR ( 255 ) NULL ,
  PRIMÁRIA CHAVE ( ` ID ` , ` fk_usuario_id ` ),
  ÍNDICE ` fk_tb_avaliacao_tb_usuario1_idx ` ( ` fk_usuario_id `  ASC ) VISÍVEL,
  RESTRIÇÃO  ` fk_tb_avaliacao_tb_usuario1 `
    EXTERNA CHAVE ( ` fk_usuario_id ` )
    Referências  ` db_localixo ` . ` Tb_usuario ` ( ` ID ` )
    AO EXCLUIR, NENHUMA AÇÃO
    NA  ATUALIZAÇÃO, NENHUMA AÇÃO)
ENGINE = InnoDB;


SET SQL_MODE = @OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS;