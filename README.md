Redmine List of Roles Members
==============================

Savoir-faire Linux
------------------

Easily get a list of all members of a Role grouped by projects.

___


Minimum system requirements
---------------------------

* GNU/Linux operating system
* Redmine >= 3.2
* Ruby on Rails >= 4.2
* Ruby >= 1.9.3
* Git >= 2.1.4


Installation procedure
----------------------

We will show you how to install it on Debian family Linux distributions (such as Ubuntu), and Redmine installed with aptitude, but it can works on many other distros with similar procedures.

You may need to do those commands as root, depending on your particular case.

Feel free to replace the variable $REDMINE_PATH to your own Redmine instance path.

```bash
$REDMINE_PATH=/usr/share/redmine/

cd $REDMINE_PATH/plugins/
git clone git@github.com:savoirfairelinux/redmine-list-of-roles-members.git
mv redmine-list-of-roles-members redmine_list_of_roles_members
rake redmine:plugins:migrate RAILS_ENV=production
service apache2 reload  # or depending on which HTTP server you use

```

There is not further configuration needed to do after installation.


Screenshots of plugin
---------------------

![Roles list screenshot](https://github.com/savoirfairelinux/redmine-list-of-roles-members/raw/master/screenshots/list.jpg)

![Roles members screenshot](https://github.com/savoirfairelinux/redmine-list-of-roles-members/raw/master/screenshots/members.jpg)


Contributing to this plugin
---------------------------

We absolutely appreciate patches, feel free to contribute directly on the GitHub project.

Repositories / Development website / Bug Tracker:
- https://github.com/savoirfairelinux/redmine-list-of-roles-members.git

Do not hesitate to join us and post comments, suggestions, questions and general feedback directly on the issues tracker.

**Author :** David Côté-Tremblay <david.cote-tremblay@savoirfairelinux.com>

**Website :** https://www.savoirfairelinux.com/
