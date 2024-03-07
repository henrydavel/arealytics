
The ***drinker*** app is a java api connecting to ***AWS RDS***


Your can pull 'drinker' into intellij:
https://github.com/henrydavel/arealytics.git

>build the project with ***gradlew clean build***

after the build you can run the project locally and intellij wil start up TomCat and deploy the app
accodingly to localhost

once up and running you can open the following 2 files that will give you access to the api. you should be able to make all the relevant calls that
would be called from the front-end from these 2 files. Lookups and persisting data as per document
* ~/persist_api.http   
*  ~/lookup.http  
(be sure to set you environment to local)

Basic Auth was set up for this and the username password is configured in the application.properties (
>spring.security.user.name=drinker
> 
>spring.security.user.password=password
> 
> 
**DB Details:**

All the DB create scripts can be found in : 
>***~/src/test/resources/data***

1. create.sql will create the DB and relationship
2. storedProcedure.sql will create all the stored procedures asn functions
3. insertData.swl will populate the DB with the relevant JSON data provided

The configuration and properties of the DB can be found in
>***application-local.properties***

AWS-RDS
 * name:      thedrinker
* Endpoint:   thedrinker.c9u8cmke058w.eu-west-1.rds.amazonaws.com
* Port:       5432
* user:       drinker
* password:   thedrinkerdb
* url: https://eu-west-1.console.aws.amazon.com/rds/home?region=eu-west-1#database:id=thedrinker;is-cluster=false





