-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: portal_noticias
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `noticias`
--

DROP TABLE IF EXISTS `noticias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noticias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `noticia` text,
  `data_criacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `resumo` varchar(100) DEFAULT NULL,
  `autor` varchar(30) DEFAULT NULL,
  `data_noticia` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticias`
--

LOCK TABLES `noticias` WRITE;
/*!40000 ALTER TABLE `noticias` DISABLE KEYS */;
INSERT INTO `noticias` VALUES (18,'Colisão entre carros gera morte','O presidente Michel Temer afirmou nesta quarta-feira (15) que a reforma da Previdência proposta por seu governo e que está em tramitação no Congresso vai evitar que o INSS entre em \"colapso\" e que, se aprovada, \"não vai tirar direito de ninguém.\" \r\n\"Nós apresentamos um caminho para salvar a Previdência do colapso, para salvar os benefícios dos aposentados de hoje e dos jovens que se aposentarão amanhã. Isso, parece ser coisa \'será que é para tirar direitos de pessoas?\'. Em primeiro lugar, não vai tirar direito de ninguém. Quem tem direito já adquirido, ainda que esteja no trabalho não vai perder nada do que tem\", disse Temer durante evento do Sebrae, em Brasília. \r\nA declaração foi feita no dia em que várias cidades do país registram protestos contra a reforma da Previdência. Em São Paulo, e na região metropolitana da capital paulista, por exemplo, ônibus e metrô pararam no início da manhã (circulação voltou a funcionar parcialmente por volta das 8h30). O metrô funciona parcialmente ao longo do dia e rodovias foram bloqueadas. \r\nVeja fotos dos protestos contra a reforma da Previdência pelo país \r\nEntre as medidas propostas está a criação de idade mínima de aposentadoria de 65 anos, para homens e mulheres, e a exigência de que os trabalhadores contribuam por 49 para terem direito ao benefício integral pelo INSS. ','2017-03-15 18:08:16','Dois carros se colidiram.','Igor Virginio','2017-03-15'),(19,'Temer diz que reforma da Previdência \'não vai tirar direito de ninguém\'','O presidente Michel Temer afirmou nesta quarta-feira (15) que a reforma da Previdência proposta por seu governo e que está em tramitação no Congresso vai evitar que o INSS entre em \"colapso\" e que, se aprovada, \"não vai tirar direito de ninguém.\" \r\n\"Nós apresentamos um caminho para salvar a Previdência do colapso, para salvar os benefícios dos aposentados de hoje e dos jovens que se aposentarão amanhã. Isso, parece ser coisa \'será que é para tirar direitos de pessoas?\'. Em primeiro lugar, não vai tirar direito de ninguém. Quem tem direito já adquirido, ainda que esteja no trabalho não vai perder nada do que tem\", disse Temer durante evento do Sebrae, em Brasília. \r\nA declaração foi feita no dia em que várias cidades do país registram protestos contra a reforma da Previdência. Em São Paulo, e na região metropolitana da capital paulista, por exemplo, ônibus e metrô pararam no início da manhã (circulação voltou a funcionar parcialmente por volta das 8h30). O metrô funciona parcialmente ao longo do dia e rodovias foram bloqueadas. \r\nVeja fotos dos protestos contra a reforma da Previdência pelo país \r\nEntre as medidas propostas está a criação de idade mínima de aposentadoria de 65 anos, para homens e mulheres, e a exigência de que os trabalhadores contribuam por 49 para terem direito ao benefício integral pelo INSS. ','2017-03-15 18:09:25','Cidades registraram protestos nesta quarta contra a reforma proposta pelo governo.','João Kleber','2017-03-15'),(20,'22 capitais e o DF têm manifestações nesta quarta (15)','Sindicatos e servidores públicos fazem protestos e paralisações nesta quarta-feira (15) contra as reformas trabalhista e da Previdência. Os transportes públicos pararam em várias capitais, e vias foram bloqueadas. Em alguns estados, como Pernambuco e Rio Grande do Norte, professores da rede pública decretaram greve por tempo indeterminado.','2017-03-15 18:10:09','Trabalhadores protestam contra reformas trabalhista e da Previdência.','Kuat Morrison','2017-03-15'),(21,'Acompanhe o trânsito em SP','Nesta manhã, manifestantes bloquearam algumas rodovias de São Paulo. Saiba mais: https://glo.bo/2mYQgJz','2017-03-15 18:10:49','Saiba como foi o período da manhã em São Paulo nesta quarta-feira ','Irineu','2017-03-15'),(22,'Protestos deixam trânsito congestionado em várias partes do Rio','Protestos contra a Reforma da Previdência complicavam o trânsito no Rio e provocam impactos em várias partes da cidade nesta quarta (15). Por volta das 11h, portuários faziam uma manifestação na Av. Brasil. Às 12h, uma manifestação de professores de um colégio da rede particular deixava o trânsito lento na Rua Pinheiro Machado, em Laranjeiras, na Zona Sul do Rio, e também causava reflexos na Rua Bento Lisboa e na Rua Pedro Américo, no Catete.','2017-03-15 18:11:44','Grupo interdita pistas da Av. Brasil na manhã desta quarta-feira (15).','Igor Virginio','2017-03-15'),(23,'Leonidas consegue sua espada lendaria','Não obstrutivo\r\nTodos os recursos presentes no Node.js e também a maioria das bibliotecas feitas para ele adotaram um padrão não obstrutivo de escrever código, isso quer dizer que em Node.js você geralmente vai conseguir estruturar seu código de uma maneira que operações que não dependem de nada que está sendo executado possam ser executadas de forma independente.\r\nPara mostrar um pouco como isso funciona, vamos um programa que escreve duas frases no terminal, porém uma dessas frases precisa ser carregada da memória antes de ser impressa.\r\nvar frase;\r\n \r\ncarregaFrase = function (callback) {  \r\n  setTimeout(function() {\r\n    //Simula leitura da frase no banco de dados.\r\n    frase = \"Minha frase obstrutiva\";\r\n    callback();\r\n  }, 3000)\r\n}\r\n \r\nimprimeFrase = function () {\r\n  console.log(frase);\r\n}\r\n \r\ncarregaFrase(imprimeFrase);\r\n \r\nconsole.log(“Olá\");\r\nNesse exemplo foi criada uma função chamada carregaFrase cujo objetivo é ler uma determinada frase de uma fonte de dados, e uma outra função chamada imprimeFrase que imprime o valor de uma determinada variável no console. Como dependemos da leitura da frase na fonte de dados para imprimir o valor, passamos a função que imprime como parâmetro para a função de leitura para que possamos executar essa função quando a leitura for concluída. Esse tipo de função que é passada como parâmetro dessa maneira é chamada de callback.\r\nAo executar este exemplo com Node.js ou qualquer mecanismo JavaScript você vai perceber que a frase “Olá” será impressa antes da outra frase mesmo estando posicionada depois no código, isso se deve ao fato de sua execução não depender de nada enquanto a execução da outra frase depende de uma operação que leva 3 segundos.\r\nEste é um exemplo extremamente simples de como criar um código não obstrutivo, portanto use sua imaginação para imaginar cenários em que isso pode ser útil.\r\nObserve que no nosso primeiro exemplo com Node.js tanto a função on quanto a função createServer podem receber uma função de callback.\r\nConclusão\r\nEspero que este tutorial tenha sido o suficiente para provocar o seu interesse em aprender mais sobre Node.js. Portanto visite a documentação do Node.js para obter mais informações e exemplos de aplicações dessa plataforma e também a página da Joyent, patrocinadora oficial do projeto.\r\nE finalmente, Node.js é um projeto open source, portanto você pode visualizar o código fonte e contribuir no repositório do Node.js no GitHub.','2017-03-15 18:49:56','Espada corta até aço!','Dom Pedro 3º','2017-03-09');
/*!40000 ALTER TABLE `noticias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-15 16:27:12
