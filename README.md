# Mgt2toDev

* Ambiente de Estudo
* Desenvolvimento com Magento2

#### Projeto Magento... 

Para usa-lo, clone o projeto:
````
$ git clone https://github.com/livioweb/magento2.git
````

Apos a clonagem :) esta concluida, entre na pasta ... 
````
$ cd magento2
````

Agora baixe o magento escolhendo a versao, por exemplo: 
````
$ bin/magento 2.3.2
````

Por fim, de um up no docker:
````
$ docker-composer up --build
````
Verifique se o arquivo config/env.php foi copiado corretamente para a pasta app/etc/env.php com o conteudo

bin/magento  app:config:import

bin/magento module:enable --all

bin/magento setup:di:compile

bin/magento setup:upgrade

bin/magento setup:db-schema:upgrade

# Set base URLs to local environment URL:
bin/magento config:set web/secure/base_url https://local.kaostech.test/ &&
bin/magento config:set web/unsecure/base_url http://local.kaostech.test/

sudo echo "127.0.0.1 local.kaostech.com" | sudo tee -a /etc/hosts

open https://local.kaostech.com


Enable for Cache:

bin/magento setup:config:set --cache-backend=redis --cache-backend-redis-server=redis --cache-backend-redis-db=0

bin/magento setup:config:set --session-save=redis --session-save-redis-host=redis --session-save-redis-log-level=4 --session-save-redis-db=2