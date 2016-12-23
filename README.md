Merkator
==============

New test (and maybe more) project to make an update of the old Mercator.

Installation
------------

* Install Docker >= 1.9 (https://docs.docker.com/installation/)

* Install docker-compose >= 1.5 (https://docs.docker.com/compose/install/)

And then, run ::
`docker-compose up`

Note :
Sometime Postgis does not start fast enough   
You can try to relunch with the previous command or open a new terminal and use `docker-compose up postgis`   
In that case Postgis will be launched separately.   
