![image](/3-ansible-dockerhub/cicd-flow-3.png)

- Objective 1: Create an Ansiblehost, make Jenkins trigger Ansible playbook to push new image to Dockerhub
- Objective 2: Write additional playbook to deploy container on Docker host

Spin up a new EC2 instance for ansiblehost.

## Install Ansible
Follow the instructions from https://github.com/yankils/Simple-DevOps-Project/blob/master/Ansible/Ansible_installation.MD

## Integrate Ansible -> Dockerhost
- On dockerhost, create ansadmin user and make it sudoer. Enable SSH key based login
- On ansiblehost, add dockerhost's private ip to /etc/hosts file. Copy ssh key to dockerhost. See if SSH works
- From Jenkins, Manage Jenkins > System > Add SSH server as ansiblehost. Lecture suggested password-based auth, but I used ssh key.
- Install docker on ansiblehost. Add ansadmin under docker group to use docker command.

## Run Ansible playbook
- Create `/etc/ansible/hosts` file to populate inventory for Ansible
```
[dockerhost]
172.31.27.252
[ansiblehost]
172.31.31.195
```
- Create Ansible playbooks. `regapp.yml` creates Docker image. `deploy_regapp.yml` creates a container. Place both in `/opt/docker`.

`ansible-playbook deploy_regapp.yml --check` to dry run the playbook
## Integration
- Create a Jenkins job that executes below as post-action. Make sure to include the path.
- Source files: webapp/target/*.war
- Remove prefix: webapp/target
- remote directory: //opt/docker
#### Exec Command
```
ansible-playbook /opt/docker/regapp.yml;
ansible-playbook /opt/docker/deploy_regapp.yml
```

