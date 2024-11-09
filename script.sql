CREATE SCHEMA IF NOT EXISTS `ComaBem` 

CREATE TABLE IF NOT EXISTS `ComaBem`.`Fornecedor` (
  `idFornecedor` INT NOT NULL AUTO_INCREMENT,
  `nomeFornecedor` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idFornecedor`))
ENGINE = InnoDB

alter TABLE IF NOT EXISTS `ComaBem`.`Produto` (
  `idProduto` INT NOT NULL AUTO_INCREMENT,
  `nomeProduto` VARCHAR(45) NOT NULL,
  `preco` FLOAT NOT NULL,
  `tipoMedida` VARCHAR(45) NOT NULL,
  `idFornecedor` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idProduto`),
  CONSTRAINT `idFornecedor`
    FOREIGN KEY (`idProduto`)
    REFERENCES `ComaBem`.`Fornecedor` (`idFornecedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB