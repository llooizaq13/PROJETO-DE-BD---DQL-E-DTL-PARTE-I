-- MySQL Workbench Forward Engineering

-- -----------------------------------------------------
-- Criando esquema: passatempo
-- -----------------------------------------------------

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Criando esquema: passatempo
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `passatempo`;
CREATE SCHEMA IF NOT EXISTS `passatempo` DEFAULT CHARACTER SET utf8 ;
USE `passatempo` ;

-- -----------------------------------------------------
-- DROP TABLES : Caso exista algo duplicado, excluir para não dar erro.
-- -----------------------------------------------------
DROP TABLE IF EXISTS `EnderecoC`;
DROP TABLE IF EXISTS `Trabalhar`;
DROP TABLE IF EXISTS `Autor`;
DROP TABLE IF EXISTS `EnderecoF`;
DROP TABLE IF EXISTS `Cliente`;
DROP TABLE IF EXISTS `Pagamento`;
DROP TABLE IF EXISTS `Status`;
DROP TABLE IF EXISTS `Exemplar`;
DROP TABLE IF EXISTS `PedidoVenda`;
DROP TABLE IF EXISTS `Funcionario`;
DROP TABLE IF EXISTS `Cargo`;
DROP TABLE IF EXISTS `Departamento`;
DROP TABLE IF EXISTS `PalavraChave`;
DROP TABLE IF EXISTS `AreaConhecimento`;
DROP TABLE IF EXISTS `Livro`;

-- -----------------------------------------------------
-- Criar tabelas.
-- -----------------------------------------------------

CREATE TABLE `Livro` (
  `IDISBN` VARCHAR(13) NOT NULL,
  `NumeroPaginas` DECIMAL(20) NOT NULL,
  `Genero` VARCHAR(20) NOT NULL,
  `DataPublicacao` DATE NOT NULL,
  `Titulo` VARCHAR(45) NOT NULL,
  UNIQUE INDEX `IDISBN_UNIQUE` (`IDISBN` ASC)
) ENGINE = InnoDB;

CREATE TABLE `AreaConhecimento` (
  `Area` VARCHAR(40) NOT NULL,
  `Descricao` VARCHAR(120) NOT NULL,
  `IDISBN` VARCHAR(13) NOT NULL,
  INDEX `fk_AreaConhecimento_Livro1_idx` (`IDISBN` ASC),
  CONSTRAINT `fk_AreaConhecimento_Livro1`
    FOREIGN KEY (`IDISBN`)
    REFERENCES `Livro` (`IDISBN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;

CREATE TABLE `PalavraChave` (
  `PalavraChave` VARCHAR(46) NOT NULL,
  `Descricao` VARCHAR(90) NOT NULL,
  `IDISBN` VARCHAR(13) NOT NULL,
  INDEX `fk_PalavraChave_Livro1_idx` (`IDISBN` ASC),
  CONSTRAINT `fk_PalavraChave_Livro1`
    FOREIGN KEY (`IDISBN`)
    REFERENCES `Livro` (`IDISBN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;

CREATE TABLE `Funcionario` (
  `CPFFuncionario` VARCHAR(14) NOT NULL,
  `Nome` VARCHAR(60) NULL,
  `Telefone` VARCHAR(15) NULL,
  `Salario` DECIMAL(7,2) NULL,
  `DataNascimento` DATE NULL,
  PRIMARY KEY (`CPFFuncionario`),
  UNIQUE INDEX `CPFFuncionario_UNIQUE` (`CPFFuncionario` ASC)
) ENGINE = InnoDB;

CREATE TABLE `PedidoVenda` (
  `IDPedidosVendas` INT NOT NULL,
  `DataTransacoes` DATE NOT NULL,
  `CPFFuncionario` VARCHAR(14) NOT NULL,
  PRIMARY KEY (`IDPedidosVendas`, `CPFFuncionario`),
  INDEX `fk_PedidosVendas_Funcionario1_idx` (`CPFFuncionario` ASC),
  CONSTRAINT `fk_PedidosVendas_Funcionario1`
    FOREIGN KEY (`CPFFuncionario`)
    REFERENCES `Funcionario` (`CPFFuncionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;

CREATE TABLE `Exemplar` (
  `idExemplares` INT NOT NULL,
  `StatusExemplares` VARCHAR(20) NULL,
  `IDPedidosVendas` INT NOT NULL,
  `CPFFuncionario` VARCHAR(14) NOT NULL,
  `IDISBN` VARCHAR(13) NOT NULL,
  PRIMARY KEY (`idExemplares`),
  UNIQUE INDEX `idExemplares_UNIQUE` (`idExemplares` ASC),
  INDEX `fk_Exemplares_PedidosVendas1_idx` (`IDPedidosVendas` ASC, `CPFFuncionario` ASC),
  INDEX `fk_Exemplares_Livro1_idx` (`IDISBN` ASC),
  CONSTRAINT `fk_Exemplares_PedidosVendas1`
    FOREIGN KEY (`IDPedidosVendas`, `CPFFuncionario`)
    REFERENCES `PedidoVenda` (`IDPedidosVendas`, `CPFFuncionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Exemplares_Livro1`
    FOREIGN KEY (`IDISBN`)
    REFERENCES `Livro` (`IDISBN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;

CREATE TABLE `Status` (
  `descricao` VARCHAR(20) NOT NULL,
  `IDPedidosVendas` INT NOT NULL,
  `CPFFuncionario` VARCHAR(14) NOT NULL,
  PRIMARY KEY (`IDPedidosVendas`, `CPFFuncionario`),
  CONSTRAINT `fk_status_PedidosVendas1`
    FOREIGN KEY (`IDPedidosVendas`, `CPFFuncionario`)
    REFERENCES `PedidoVenda` (`IDPedidosVendas`, `CPFFuncionario`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE `Pagamento` (
  `Comprovante` VARCHAR(15) NOT NULL,
  `FormaPagamento` VARCHAR(30) NOT NULL,
  `Parcelamento` DECIMAL(2) NOT NULL,
  `Local` VARCHAR(20) NOT NULL,
  `IDPedidosVendas` INT NOT NULL,
  `CPFFuncionario` VARCHAR(14) NOT NULL,
  PRIMARY KEY (`Comprovante`, `IDPedidosVendas`, `CPFFuncionario`),
  UNIQUE INDEX `Comprovante_UNIQUE` (`Comprovante` ASC),
  INDEX `fk_Pagamento_PedidosVendas1_idx` (`IDPedidosVendas` ASC, `CPFFuncionario` ASC),
  CONSTRAINT `fk_Pagamento_PedidosVendas1`
    FOREIGN KEY (`IDPedidosVendas`, `CPFFuncionario`)
    REFERENCES `PedidoVenda` (`IDPedidosVendas`, `CPFFuncionario`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE `Cliente` (
  `CPFCliente` VARCHAR(14) NOT NULL,
  `Telefone` VARCHAR(15) NOT NULL,
  `Email` VARCHAR(40) NOT NULL,
  `DataNascimento` DATE NOT NULL,
  `Nome` VARCHAR(60) NOT NULL,
  `IDPedidosVendas` INT NOT NULL,
  `CPFFuncionario` VARCHAR(14) NOT NULL,
  PRIMARY KEY (`CPFCliente`),
  UNIQUE INDEX `CPFCliente_UNIQUE` (`CPFCliente` ASC),
  UNIQUE INDEX `Email_UNIQUE` (`Email` ASC),
  UNIQUE INDEX `Telefone_UNIQUE` (`Telefone` ASC),
  INDEX `fk_Cliente_PedidosVendas1_idx` (`IDPedidosVendas` ASC, `CPFFuncionario` ASC),
  CONSTRAINT `fk_Cliente_PedidosVendas1`
    FOREIGN KEY (`IDPedidosVendas`, `CPFFuncionario`)
    REFERENCES `PedidoVenda` (`IDPedidosVendas`, `CPFFuncionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;

CREATE TABLE `Cargo` (
  `IDCargo` INT NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`IDCargo`)
) ENGINE = InnoDB;

CREATE TABLE `EnderecoF` (
  `CEP` VARCHAR(9) NOT NULL,
  `Rua` VARCHAR(45) NOT NULL,
  `Bairro` VARCHAR(45) NOT NULL,
  `UF` CHAR(2) NOT NULL,
  `Cidade` VARCHAR(45) NOT NULL,
  `Complemento` VARCHAR(45) NULL,
  `Referencia` VARCHAR(40) NULL,
  `Numero` INT NOT NULL,
  `CPFFuncionario` VARCHAR(14) NOT NULL,
  PRIMARY KEY (`CPFFuncionario`),
  CONSTRAINT `fk_Endereco_Funcionario1`
    FOREIGN KEY (`CPFFuncionario`)
    REFERENCES `Funcionario` (`CPFFuncionario`)
) ENGINE = InnoDB;

CREATE TABLE `Departamento` (
  `IDRegistro` VARCHAR(20) NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `DescricaoAtividades` VARCHAR(100) NOT NULL,
  `Responsavel` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`IDRegistro`),
  UNIQUE INDEX `Nome_UNIQUE` (`Nome` ASC),
  UNIQUE INDEX `IDRegistro_UNIQUE` (`IDRegistro` ASC)
) ENGINE = InnoDB;

CREATE TABLE `Autor` (
  `IDAutor` INT NOT NULL,
  `Nome` VARCHAR(60) NOT NULL,
  `Nacionalidade` VARCHAR(15) NOT NULL,
  `DataNascimento` DATE NOT NULL,
  `Biografia` MEDIUMTEXT NOT NULL,
  `EstiloLiterario` VARCHAR(45) NOT NULL,
  `Obras` INT NOT NULL,
  `IDISBN` VARCHAR(13) NOT NULL,
  PRIMARY KEY (`IDAutor`, `IDISBN`),
  INDEX `fk_Autores_Livro1_idx` (`IDISBN` ASC),
  CONSTRAINT `fk_Autores_Livro1`
    FOREIGN KEY (`IDISBN`)
    REFERENCES `Livro` (`IDISBN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;

CREATE TABLE `Trabalhar` (
  `DataInicio` DATETIME NOT NULL,
  `DataFim` DATETIME NULL,
  `CPFFuncionario` VARCHAR(14) NOT NULL,
  `IDRegistro` VARCHAR(20) NOT NULL,
  `IDCargo` INT NOT NULL,
  PRIMARY KEY (`CPFFuncionario`, `IDRegistro`, `IDCargo`),
  INDEX `fk_Trabalhar_Departamento1_idx` (`IDRegistro` ASC),
  INDEX `fk_Trabalhar_Cargo1_idx` (`IDCargo` ASC),
  CONSTRAINT `fk_Trabalhar_Funcionario1`
    FOREIGN KEY (`CPFFuncionario`)
    REFERENCES `Funcionario` (`CPFFuncionario`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Trabalhar_Departamento1`
    FOREIGN KEY (`IDRegistro`)
    REFERENCES `Departamento` (`IDRegistro`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Trabalhar_Cargo1`
    FOREIGN KEY (`IDCargo`)
    REFERENCES `Cargo` (`IDCargo`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE `EnderecoC` (
  `CEP` VARCHAR(9) NOT NULL,
  `Rua` VARCHAR(45) NOT NULL,
  `Bairro` VARCHAR(45) NOT NULL,
  `UF` CHAR(2) NOT NULL,
  `Cidade` VARCHAR(45) NOT NULL,
  `Complemento` VARCHAR(45) NULL,
  `Referencia` VARCHAR(40) NULL,
  `Numero` INT NOT NULL,
  `CPFCliente` VARCHAR(14) NOT NULL,
  PRIMARY KEY (`CPFCliente`),
  CONSTRAINT `fk_EnderecoC_Cliente1`
    FOREIGN KEY (`CPFCliente`)
    REFERENCES `Cliente` (`CPFCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Resetar configurações.
-- -----------------------------------------------------

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
