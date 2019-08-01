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
$ bin/magento 2.3.0
````

Por fim, de um up no docker:
````
$ docker-composer up --build
````
Verifique se o arquivo config/env.php foi copiado corretamente para a pasta app/etc/env.php com o conteudo
````
cp config/env.php src/app/etc/env.php   
````
````
bin/magento  app:config:import
````
bin/magento module:enable --all 
bin/magento deploy:mode:set developer
 bin/magento setup:install --use-rewrites=1

bin/magento setup:static-content:deploy -f
bin/magento setup:static-content:deploy -f pt_BR

````
bin/magento module:enable --all
````

````
bin/magento setup:di:compile
````

````
bin/magento setup:upgrade
````

````
bin/magento setup:db-schema:upgrade
````

# Set base URLs to local environment URL:
````
bin/magento config:set web/secure/base_url https://local.grupomateus.test/ &&
bin/magento config:set web/unsecure/base_url http://local.grupomateus.test/




bin/magento setup:store-config:set --base-url="http://local.kaostech.test/" &&
bin/magento setup:store-config:set --base-url-secure="https://local.kaostech.test/"
````
bin/magento setup:store-config:set --use-secure-admin=1


rm -rf var/cache/* var/generation var/page_cache var/tmp/* var/view_preprocessed/* var/generation var/di pub/static/frontend/* pub/static/adminhtml/*

````
sudo echo "127.0.0.1 local.grupomateus.test" | sudo tee -a /etc/hosts
````

````
open https://local.kaostech.com
````

Enable for Cache:
````
bin/magento setup:config:set --cache-backend=redis --cache-backend-redis-server=redis --cache-backend-redis-db=0

bin/magento setup:config:set --session-save=redis --session-save-redis-host=redis --session-save-redis-log-level=4 --session-save-redis-db=2
````

````
bin/magento setup:install \
 --base-url=http://local.grupomateus.test/
 --base-url-secure=https://local.grupomateus.test/
 --db-host=db \
 --db-name=magento \
 --db-user=magento \
 --db-password=magento \
 --backend-frontname=admin \
 --admin-firstname=admin \
 --admin-lastname=admin \
 --admin-email=admin@admin.com \
 --admin-user=admin \
 --admin-password=admin123 \
 --language=en_US \
 --currency=USD \
 --timezone=America/Chicago \
 --use-rewrites=1 \
 --use-secure-admin=1
````


bin/magento setup:store-config:set --use-rewrites=1
bin/magento setup:store-config:set --use-secure-admin=1
Enter the following command to reindex the catalog search index only:

bin/magento indexer:reindex catalogsearch_fulltext

Enter the following command to reindex all indexers:

bin/magento indexer:reindex
