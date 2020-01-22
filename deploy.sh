#!/bin/bash
ansible-playbook ./deploy.yml --private-key=~/keys/ec2_key.pem -u ubuntu -i ./hosts