Ansible Playbook to deploy code
===============================

This ansible playbook will deploy your code under the src/ directory to the target location on the target server. The source and target locations are defined in group_vars/all. The target server is defined in the hosts file.

To deploy just execute:

```
$ ./deploy.sh
```

You can get verbose logging by adding `-vvvv` to deploy.sh right after ansible-playbook

The username used to deploy is defined in the deploy.sh. In my example I have set this to `ubuntu`.

The other assumption is that the ssh key to log into the server is located at ~/keys/mks_ec2_key.pem

The ansible synchronize module is used to copy files to target. The file ownership, group and permissions are then set using the file ansible module. You can change them to what you want in lines 19-21 in roles/common/tasks/syncsource.yml. In my example I am setting owner and group to `root` and setting file permissions to `755`.

Requirements:
    Ansible v2.9+

You can also setup a python virtual environment using Python 3.6+ and install requirements from the requirements.txt file included here.
