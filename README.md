This repo holds the proposed solution to the problem statements as below.
1. There is a Devops pipeline where it saves configuration files/parameters in repo like Git.
2. Automation tools like Jenkins/Ansible need to continuously check the changes in repo and
pickup the change in config file.
3. Based on the configuration, automation tool needs to check if ngnix is already running in
AWS cloud or not.
4. Use Existing AWS Vm :- Install nginx on the instance and then apply the new changes in
ngnix config based on repo changes.
