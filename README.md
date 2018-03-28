# README

This is a twitter clone tzone. It allows you to view and post tweets as well as comment on tweets.

This README would normally document whatever steps are necessary to get the
application up and running.

* Ruby version: 2.5.0
* Rails version: 5.1.5
* DBMS: mysql


TODO:
* Database creation
* Database initialization
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions

------------
Instructions: (WIP)
1. helm install stable/mysql --set mysqlUser=root,mysqlAllowEmptyPassword=true,mysqlDatabase=tzone_development --name zeroed-bison
2. draft up
3. kubectl exec <pod-name> -- bash -c 'cd /app && RAILS_ENV=development bin/rake db:migrate'
