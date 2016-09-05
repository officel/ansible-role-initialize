Ansible Role: Initialize CentOS by officel roles
=========

[![Build Status](https://travis-ci.org/officel/ansible-role-initialize.svg?branch=master)](https://travis-ci.org/officel/ansible-role-initialize)
[![Ansible Role](https://img.shields.io/badge/galaxy-officel.initialize-blue.svg?maxAge=2592000)](https://galaxy.ansible.com/officel/initialize/)

install yum repository(s).

Requirements
------------

none.

Role Variables
--------------

none.

Dependencies
------------

[officel.selinux](https://github.com/officel/ansible-role-selinux)
[officel.timezone](https://github.com/officel/ansible-role-timezone)
[officel.ulimit](https://github.com/officel/ansible-role-ulimit)
[officel.yum-repos](https://github.com/officel/ansible-role-yum-repos)
[officel.yum-default](https://github.com/officel/ansible-role-yum-default)
[officel.sysctl-conf](https://github.com/officel/ansible-role-sysctl-conf)
[officel.service-stop](https://github.com/officel/ansible-role-service-stop)
[officel.etckeeper](https://github.com/officel/ansible-role-etckeeper)
[officel.anyenv](https://github.com/officel/ansible-role-anyenv)


Example Playbook
----------------

    - hosts: all
      become: true
      roles:
         - officel.initialize

License
-------

MIT / BSD

Author Information
------------------

This role was created by raki.
