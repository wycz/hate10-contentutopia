hate10-contentutopia
====================

Small web application to generate JSON substitution lists for the [FoxReplace
Firefox add-on](https://addons.mozilla.org/de/firefox/addon/foxreplace/).
Quickly produced for a friend to use at [#hate10](http://hate10.com).

Setup
-----

    git clone https://github.com/nning/hate10-contentutopia.git
    cd hate10-contentutopia
    bundle
    rake db:migrate

Startup
-------

This command starts the server in foreground listening on any network:

    rails s -b ::

Starting On Boot
----------------

Paste the following line at the end of `/etc/rc.local`:

    su <user> -c "cd <app-dir> && rake server:start"

Rake Tasks
----------

### Reset Substitutions

    rake substitutions:reset

### Background WEBrick Server Management

	rake server:start
	rake server:stop
	rake server:restart
