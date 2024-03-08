
The ***drinker*** app is a java api connecting to ***AWS RDS***


Your can pull 'drinker' into intellij from master branch:
***https://github.com/henrydavel/arealytics.git***


 ![drinker API flow.jpg](..%2Fdrinker%20API%20flow.jpg)
>build the project with ***gradlew clean build***

after the build you can run the project locally and intellij wil start up TomCat and deploy the app
accodingly to localhost

once up and running you can open the following 2 files that will give you access to the api. you should be able to make all the relevant calls that
would be called from the front-end from these 2 files. Lookups and persisting data as per document
* ~/persist_api.http   
*  ~/lookup.http  
(be sure to set you environment to local)
You will be able to test all REST-calls. Most of the business logic is kept in the db in the form of stored procedures.

Basic Auth was set up for this and the username password is configured in the application.properties (
>spring.security.user.name=drinker
> 
>spring.security.user.password=password
> 
> 
**DB Details:**
![drinker API flow.jpg](ERD%20thedrinker.png)

Above is an ERD of the DB.
I added an extra table called 'drinker' but did not populate any data or functionality for it(yet))
>You can also view the ERD  https://dbdiagram.io/d/thedrinker-65e2d11ccd45b569fb57cba1

The DB is the drive behind the app.

The tables are split between the 'Data' tables (Stock, Bar, Beverages...) and the VistEvent table.

The **VisitEvent** table bears no relation to any of the data tables and is loosley couple to the rest of the db (could later put a person/drinker table to personalise the app and make it track not just Juan,
but also some other  chaps!)
Various stored procedures will use the visit_events and from the Visit_Events deductions can be made 'bout Juan's drinking habits.

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





