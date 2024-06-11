
# About the project
----
Trac is old, simple and very robust online notes application. 

This little docker bundle designed to quickly start project and start use. If docker is set, project should install and start in 5 min. 

Default credentials are: `u/p: admin/pass`
Default set port: `1080`

## Quick start up version

Pull project from git repository and inside `private-notes` directory, run command:
`docker compose up`

Enter browser and hit: 127.0.0.1:1080 


## Slow start up version 

To start project from the begining:
 * delete directory `project`
 * start docker: `docker compose up`
 * enter project container: `docker exec -it private-notes_project_1 /bin/bash`
   * init command: `trac-admin /var/www/project initenv`
   * activate default pre-set admin: `trac-admin /var/www/project permission add admin TRAC_ADMIN`


Official install guidance: https://trac.edgewall.org/wiki/TracGuide 

