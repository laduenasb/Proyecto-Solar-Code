-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: solar-db
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Paneles solares.','Paneles','PX'),(2,'Baterias que almacenan electricidad.','Baterias','BS'),(3,'Dispositivo encargado de gestionar la carga y descarga de las baterías solares.','Controladores','CX'),(4,'Se encarga de transformar la corriente continua que proviene de los paneles solares en corriente alterna.','Inversores','IS'),(5,'Elementos que conforman una instalación fotovoltaica.','Kit solar','KS'),(6,'Elementos necesarios para la instalación de los paneles solares.','Hogar','HR'),(7,'Baterias de gran capacidad.','Industrial','IL');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'El panel solar azul oscuro de 500 W es de Ja Solar, uno de los mejores fabricantes de la industria en la actualidad. Utilizando celdas monocristalinas del tipo PERC, esta serie ofrece paneles con excelentes características técnicas, ya que estas celdas son capaces de producir mayores rendimientos y eficiencias con el mismo número de celdas que los paneles convencionales.','https://cdn.autosolar.co/pdf/Ficha-tecnica-Panel-Solar-500W.pdf','Panel1.jpg','JA Solar.','Panel Solar 500W Deep Blue 3.0',701724,'PX100',5,1),(2,'La panel solar 550W 24V monocristalino JA Solar es uno de los paneles solares más eficientes del mercado. Estos paneles están diseñados para ofrecer una alta eficiencia y un rendimiento fiable en los sistemas de energía solar. Estos paneles están construidos con celdas solares monocristalinas de alta calidad de JA Solar y están equipados con marcos de aluminio anodizado para una larga vida útil. Estos paneles tienen una potencia máxima de 550W y un voltaje de trabajo de 24V para satisfacer una amplia variedad de necesidades de energía. Estos paneles ofrecen una alta eficiencia y un rendimiento fiable, lo que los hace ideales para sistemas de energía solar en los hogares, negocios y aplicaciones industriales.','https://cdn.autosolar.co/pdf/Ficha-545W-JASOLAR.pdf','Panel2.jpg','JA Solar.','Panel Solar 550W 24V Monocristalino',790375,'PX101',7,1),(3,'El Panel Solar JA SOLAR 455W 24V Monocristalino Perc es una placa fotovoltaica del fabricante Ja Solar. La gama JAM72S20 455/MR ofrece unas inmejorables prestaciones técnicas como sus medias células monocristalinas de tipo PERC que le proporcionan una alta eficiencia y generación con la misma área de captación solar que en un panel que habitualmente se alimenta de 72 células.','https://cdn.autosolar.co/pdf/JaSolar-M72S20-MR440-465W.pdf','Panel3.jpg','JA Solar.','Panel Solar 550W 24V Monocristalino',769602,'PX102',4,1),(4,'Este Panel Solar 210W 12V Monocristalino Restar Solar tiene la máxima potencia de 12V de células monocristalinas. Puede ser utilizado en pequeñas instalaciones o caravanas que funcionen a 12V. Resulta muy beneficioso en domicilios que se utilizan de manera esporádica pudiendo ofrecer consumos como iluminación, nevera, tv, etc.','https://cdn.autosolar.co/pdf/ficha-tecnica-1002115.pdf','Panel4.jpg','Restar Solar','Panel Solar 210W 12V Monocristalino',415221,'PX103',8,1),(5,'El Rack 19 Pylontech DC EM-S 6627 se trata de una estructura robusta que permite la correcta sujeción, conexión y ubicación de los módulos de baterías Pylontech y para cualquier tipo de batería con un formato estándar de 19 pulgadas. Cuenta con ranuras que facilitan la correcta ventilación de las baterías instaladas en su interior y ruedas o patas para mover el sistema en el caso de que sea necesario o mantenerlo fijo a donde se desee. En este rack no se incluyen bandejas para el apoyo de las baterías.','https://cdn.autosolar.co/pdf/1881074%20ficha.pdf','Bateria1.jpg','Pylontech','Rack 19\" hasta 10 uds',2442780,'BS100',3,2),(6,'Es una batería sellada monoblock por lo que estamos exentos de realizar cualquier tipo de mantenimiento. Al no requerir de mantenimiento periódico puede hacer la instalación en sitios más escondidos o de difícil acceso, aunque por ello cuenten con poca ventilación pues no tiene emisiones de gas durante su vida útil. Cuenta con unas asas que facilitan su manipulación durante la instalación. Su fabricación con ABS permite que pueda funcionar en circunstancias muy exigentes. Se caracteriza por su resistencia, versatilidad y calidad haciéndola altamente competitiva respecto a la competencia en el sector fotovoltaico y de baterías.','https://cdn.autosolar.co/pdf/Ficha-tecnica-Tensite-bateria-GEL-12-250.pdf','Bateria2.jpg','Tensite','Batería GEL 12V 250Ah',1798367,'BS101',12,2),(7,'La Batería AGM 12V 8Ah Ultracell UC-8-12, es de los modelos más manejables de Ultracell, cuenta con garantía de fabricante de un año desde su compra y no requiere de mantenimiento ni emite gases. La Batería AGM 12V 8Ah Ultracell UC-8-12 cuenta con una excelente relación calidad-precio, competitivas características técnicas y versatilidad de uso.','https://cdn.autosolar.co/pdf/Ultracell-UC8-12.pdf','Bateria3.jpg','Ultracell','Batería AGM 12V 8Ah',88145,'BS102',14,2),(8,'En primer lugar, cabe decir que la Batería AGM 12V 18Ah Tensite consiste en un acumulador de pequeña magnitud y que no requiere de mantenimiento. Es el más idóneo para llevar a cabo su instalación en pequeños recintos y que no dispongan de ventilación, suministrando un rendimiento muy acertado para esa modalidad de pequeñas baterías gracias a su gran polivalencia. Sus indicaciones técnicas consiguen que esta batería sea muy competitiva frente a otros diseños de diferentes marcas, como consecuencia de su magnífica relación calidad - precio.','https://cdn.autosolar.co/pdf/Ficha-tecnica-bateria-AGM-12-18Ah.pdf','Bateria4.jpg','Tensite','Batería AGM 12V 18Ah',170559,'BS103',16,2),(9,'El Controlador Carga MPPT 40A ML2440 12/24V SRNE es un avanzado controlador de carga solar con maximizador MPPT. Permite conectar cualquier tipo de panel solar para realizar la carga de nuestra batería de 12 o 24V a un máximo de 40A de intensidad. Tiene pantalla LCD integrada gracias a la cual podremos visualizar el funcionamiento de la instalación y realizar una configuración ajustada a las características de nuestro sistema directamente desde el propio controlador de un modo visual y sencillo. Cuenta con unas excelentes características técnicas a un precio muy competitivo y con garantía de fabricante de 2 años.','https://cdn.autosolar.co/pdf/Ficha_tecnica_Controlador_MPPT_sr_ml_12_24-LCD.pdf','Controlador1.jpg','SRNE','Controlador Carga MPPT 40A ML2440 12/24V',513975,'CX100',17,3),(10,'El Controlador Carga SmartSolar MPPT 100/20 Retail Victron Energy es un controlador de carga solar maximizador que nos proporciona el máximo rendimiento de cualquier tipo de panel para nuestra instalación de energía solar. Todos los modelos Smart incorporan Bluetooth interno para poder conectarnos a configurar y monitorizar nuestro Controlador desde nuestro teléfono, tablet o pc con la aplicación de Victron. Este modelo Controlador Carga SmartSolar MPPT 100/20 Retail Victron Energy trabaja con baterías de 12V y 24V y soporta un máximo de 100V en la entrada de paneles y puede cargar la batería a una intensidad máxima de 20A.','https://cdn.autosolar.co/pdf/Victron-MPPT-Smart-75-10-a-100-20.pdf','Controlador2.jpg','Victron Energy','Controlador Carga SmartSolar MPPT 100/20',1007800,'CX101',18,3),(11,'El Controlador Carga MPPT 100A LCD 12/24/48V SRNE es un controlador de carga solar que permite recargar las baterías a partir de la energía que producen los paneles solares fotovoltaicos. Este controlador de carga, al disponer de tecnología MPPT, obtiene hasta un 30% más de producción que si utilizáramos uno de tecnología PWM. Este regulador admite una tensión máxima de trabajo desde paneles de 150V y aporta una carga máxima hacia baterías de 100A.','https://cdn.autosolar.co/pdf/MPPT-MC48-Ficha.pdf','Controlador3.jpg','SRNE','Controlador Carga MPPT 100A LCD 12/24/48V',2267400,'CX102',19,3),(12,'El Controlador MPPT SC4880 80A 12/24/48V Growatt, el modelo más destacado de Growatt, la calidad precio de este controlador de carga es perfecto, además de proporcionar un estricto control de la carga de la batería a través de los algoritmos de la reconocida marca Growatt. Trabaja con baterías de 12, 24 y 48V.','https://cdn.autosolar.co/pdf/ficha-tecnica-growatt-sc48120.pdf','Controlador4.jpg','Growatt','Controlador MPPT SC4880 80A 12/24/48V',1327300,'CX103',20,3),(13,'El Inversor On Grid Growatt MAC 36KTL3-XL es un nuevo modelo de inversor de uno de los mayores fabricantes de inversores a nivel mundial, Growatt. Es un producto de gran calidad y con un diseño muy compacto y moderno. Toda esta familia de inversores dispone de 3 seguidores MPPT y un amplísimo rango de funcionamiento. Estos inversores se conectan a la red eléctrica del lugar donde estén instalados para inyectar la energía que producen los paneles y ahorrar en la factura de electricidad. Ofrecen unas excelentes características para un plazo de amortización corto gracias a su ajustado precio.','https://cdn.autosolar.co/pdf/ficha-tecnica-3004294.pdf','Inversor1.jpg','Growatt','Inversor On Grid MAC 36KTL3-XL',18332956,'IS100',21,4),(14,'El Inversor Cargador Growatt SPF 6000T DVM contiene un controlador MPPT y es capaz de trabajar a baja frecuencia 120/240VCA. También lleva un transformador de cobre puro y no es necesario contar con aplicaciones externas para realizar la configuración.','https://cdn.autosolar.co/pdf/fichatecnica-dvm(1).pdf','Inversor2.jpg','Growatt','Inversor Cargador SPF 6000T DVM-MPV',6170753,'IS101',22,4),(15,'El Vatímetro Trifásico Growatt TPM es un dispositivo de medición calibrado para saber la cantidad de energía que se demanda en la instalación eléctrica sobre la que se instala. Gracias a él también se puede configurar el inversor para realizar o no el vertido de excedentes a la red. Este vatímetro es compatible con los inversores Growatt Trifásicos.\n\nLa compra del vatímetro debe ir asociada siempre a su inversor correspondiente. Cualquier compra de este vatímetro sin el inversor será devuelta.','https://cdn.autosolar.co/pdf/EASTROM_TRIFASICO_TMP.pdf','Inversor3.jpg','Growatt','Vatímetro Smart Meter TPM-E',1109912,'IS102',23,4),(16,'El Inversor Cargador 4000W 48V MPPT 80A Must Solar es un convertidor cargador con controlador de carga MPPT que produce, con ayuda de su convertidor interno con bobinado de cobre, una onda senoidal pura. La onda a partir de este inversor de frecuencia baja, posee mismas propiedades que la del sistema eléctrico convencional. Tiene una fiabilidad mayor a los modelos que emplean un conmutador de frecuencia alta para crearla. El mismo inversor, integra un cargador de baterías para tener disponible un alternador auxiliar o el sistema eléctrico que aporte apoyo en caso de necesidad a la instalación solar. En caso de tener batería baja o no tiene suficiente energía solar, el Inversor Cargador 4000W 48V MPPT 80A Must Solar le sirve para realizar una carga de emergencia.','https://cdn.autosolar.co/pdf/PV3000-120V-LMPK.pdf','Inversor4.jpg','Must Solar','Inversor Cargador 4000W 48V MPPT 80A',3199166,'IS103',24,4),(17,'Kit Solar 6000W 48VDC 12800Whdía con Batería de litio se trata de un sistema para poder alimentar consumos propios de una vivienda habitual, de uso frecuente o de vivienda permanente. Gracias a sus 3 baterías de Litio y a su potente inversor de 6000W, podremos tener total autosuficiencia en una instalación aislada o también con conexión a la red eléctrica únicamente como respaldo. Sus 8 paneles aseguran una buena producción solar. Podremos aumentar en paneles hasta los 7000W. Además del material comentado, se adjuntan los accesorios eléctricos que puede visualizar en esta misma página para poder realizar las diferentes conexiones entre los equipos.','','KitSolar1.jpg','Full Solar Energy','Kit Solar 6000W 48V 12800Whdía',39504825,'KS100',25,5),(18,'Kit Solar Basico 24V 1600Whdía es un sistema solar de pequeñas dimensiones listo para alimentar consumos bajos en corriente alterna. Su inversor de onda pura puede aportar energía para consumos esporádicos a 120V. Los consumos en corriente continua a 12V se pueden alimentar directamente desde el controlador de carga.','','KitSolar2.jpg','Full Solar Energy','Kit Solar Basico 24V 1600Whdía',5364777,'KS101',26,5),(19,'Kit Solar OnGrid 3000W 13800Whdía Growatt es un kit con el cual podemos obtener una salida bifásica de hasta 3000W. Con este kit podemos obtener una energía entre los 414kWh/mes hasta 528kWh/mes considerando 5 horas solares pico de la zona en el que se ubicará el sistema. Asimismo podemos generar una reducción del costo de la factura eléctrica, ya que se aprovechara el día para alimentar las cargas de la vivienda con energía fotovoltaica.','','KitSolar3.jpg','Full Solar Energy','Kit Solar OnGrid 3000W 13800Whdía',13620518,'KS102',27,5),(20,'Kit Solar 1000W 24V 3400Whdía con Batería de Gel es un sistema adecuado para cuando queremos tener un pequeño sistema de energía para alimentar algún refrigerador, televisor e iluminación en casetas o viviendas de uso esporádico o de fin de semana o también para consumos más constantes en época de verano. Dada la capacidad de las baterías, se recomienda que gran parte del consumo se haga de día dado que tendremos abundante producción solar gracias a sus paneles de gran potencia con tecnología PERC. Se incluye todo el material necesario para poner en marcha el sistema solar, incluyendo la estructura para los paneles y todos los componentes eléctricos ya instalados en una chapa para proteger y facilitar el montaje del sistema.','','KitSolar4.jpg','Full Solar Energy','Kit Solar 1000W 24V 3400Whdía con Batería de Gel',7544103,'KS103',28,5),(21,'El WallBox Power Boost Clamp monofásico trabaja para medir la cantidad de electricidad entrante que es utilizada durante la carga del coche eléctrico. Gracias a esto se puede conocer cuál es la carga necesaria en función de la energía que se utiliza en cada sesión de carga.\n\nEl medidor cuenta con certificado MID.','https://cdn.autosolar.co/pdf/Manual-wallbox-power-boost.pdf','Hogar1.jpg','WallBox','Power Boost Clamp monofásico',701664,'HR100',29,6),(22,'El Pedestal Estándar Wallbox con un diseño exclusivo para los productos de Wallbox. El cuerpo está fabricado con materiales en acero y aluminio inoxidable para asegurar la calidad y la durabilidad en el tiempo. El pedestal Estándar permite una mono-instalación del cargador Wallbox y es compatible con: Pulsar Plus, Copper SB y Commander 2.','https://cdn.autosolar.co/pdf/Ficha-Wallbox-pedestal.pdf','Hogar2.jpg','WallBox','Pedestal Estándar',2956587,'HR101',30,6),(23,'El Cargador Wallbox Pulsar Plus Type 2 - 7.4kW tiene una potencia de carga de hasta 7.4kW en corriente monofásica, dispone de una manguera integrada de 5 metros, es compatible con todos los coches eléctricos de tipo 2 y cuenta con conectividad WiFi y Bluetooth.','https://cdn.autosolar.co/pdf/Ficha-Wallbox-Pulsar-Plus.pdf','Hogar3.jpg','WallBox','Cargador Pulsar Plus Type 2 - 7.4kW',6915405,'HR102',31,6),(24,'La Caja de Protección IP65 de medidas 20x15x10 centímetros es perfecta para ubicar su inversor y fijarlo en un lugar seguro de agentes externos. De la misma forma otorga unas medidas exactas para aportar seguridad e integridad a nuestro inversor fotovoltaico frente a posibles daños externos. Si tiene alguna duda o consulta o requiere de una cotización contacte con nuestro servicio técnico.','','Hogar4.jpg','Full Solar Energy','Caja de Proteccion IP65 20x15x10',79359,'HR103',32,6),(25,'El Inversor On Grid Growatt MAC 10KTL3-XL es un inversor de conexión a red de gran calidad y con un diseño cómodo y compacto. Garantía del fabricante de 2 años. Este es el modelo tiene una potencia de 10kW dentro de la gama MAC. Estos inversores se conectan a la red eléctrica para poder inyectar la energía que producen las placas y ahorrar en la factura de la luz.','https://cdn.autosolar.co/pdf/datasheet-growatt-mac-20ktl.pdf','Industrial1.jpg','Growatt','Inversor On Grid MAC 10KTL3-XL',10472546,'IL100',33,7),(26,'La Batería Estacionaria OPzV 800 2V 1110Ah C100 Tensite es una batería de placa tubular totalmente sellada y que no necesita de ningún tipo de mantenimiento. De la marca Tensite, la Batería Estacionaria OPzV 800 2V 1110Ah C100 Tensite ofrece grandes resultados para sistemas solares fotovoltaicos de consumos moderados altos. Los modelos de baterías solares 1100Ah 2V OPzV de la marca Tensite son unos modelos que suponen una gran inversión en los kits solares fotovoltaicos de tipo aislado, ya que ofrecen un excelente rendimiento ante cargas y descargas lentas y una larga vida útil.','https://cdn.autosolar.co/pdf/datasheet-tensite-batteries-opzv-1110.pdf','Industrial2.jpg','Tensite','Batería Estacionaria OPzV 2V 1110Ah C100 Tensite',3708834,'IL101',34,7),(27,'El Inversor On Grid Trifásico 100kW Fronius Tauro D de la gama Tauro es ideal para grandes instalaciones. El inversor ha sido desarrollado exclusivamente para su aplicación en instalaciones fotovoltaicas de conexión a red. Gracias a su construcción y su funcionamiento, el inversor ofrece un máximo de seguridad durante el montaje y el servicio. La monitorización de red se realiza mediante monitorización de tensión, de frecuencia y de situaciones independientes.','https://cdn.autosolar.co/pdf/ficha-tecnica-fronius-tauro.pdf','Industrial3.jpg','Fronius','Inversor On Grid Trifásico 100kW Tauro D',51562500,'IL102',35,7),(28,'El Módulo Batería Litio Growatt AXE LV 5.0L sirve para poder conformar un sistema de almacenamiento Growatt AXE compatible con la familia de inversores de autoconsumo Growatt SPF LVM-ES y SPF DVM. Se asociarán a un BMS u otro en función del inversor con el que se tienen que comunicar. Con una capacidad nominal de 5.0kWh y fabricadas con litio ferrofosfato libre de cobalto.','','Industrial4.jpg','Growatt','Batería de litio AXE LV 5.0L',15954320,'IL103',36,7);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-25 20:14:37