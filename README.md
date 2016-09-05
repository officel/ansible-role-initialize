Ansible Role: Initialize CentOS by officel roles
=========

[![Build Status](https://travis-ci.org/officel/ansible-role-initialize.svg?branch=master)](https://travis-ci.org/officel/ansible-role-initialize)
[![Ansible Role](https://img.shields.io/badge/galaxy-officel.initialize-blue.svg?maxAge=2592000)](https://galaxy.ansible.com/officel/initialize/)

Initialize CentOS by officel roles.
maybe only

	ansible-galaxy install officel.initialize

Requirements
------------

none. But there is a dependency relationship role.
set git config user.name & user.email for etckeeper if you use CentOS 7.... (see: tests/Dockerfile.centos-7)

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
