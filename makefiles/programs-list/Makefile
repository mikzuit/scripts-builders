# all: vagrant terraform ansible aws gitloglive docker-compose docker-machine minikube clean

# groups of groups
all: first dev_lang dev_extra devops media_editors security extras

all_minus_languages: first dev_extra devops media_editors security extras

regular_users: first security extras

design_users: first media_editors security extras

developer_users: first dev_lang dev_extra media_editors security extras

devops_users: first dev_extra devops media_editors security extras

# groups tasks
first:
	./installers/install-first.sh

media_editors:
	./installers/install-media-editing.sh

dev_lang: golang rustlang php nodejs

dev_extra: postman vscodes vagrant docker docker_compose docker_machine gitloglive virtualbox

devops: ansible aws terraform packer ibmcloudsdk azure gcloudsdk helm

extras:
	./installers/install-extra-tools.sh

security:
	./installers/install-security.sh

# individuals
google-chrome:
	./installers/install-chrome.sh
tor-browser:
	./installers/install-tor.sh
php:
	./installers/install-php.sh
nodejs:
	./installers/install-nodejs-nvm.sh
rustlang:
	-/installers/install-rustlang.sh
golang:
	./installers/install-golang.sh
postman:
	./installers/install-postman.sh
vscodes:
	./installers/install-vscodes.sh
docker:
	./installers/install-docker.sh
gitloglive:
	./installers/install-git-loglive.sh
docker_compose:
	./installers/install-docker-compose.sh
docker_machine:
	./installers/install-docker-machine.sh
minikube:
	./installers/install-minikube.sh
vagrant:
	./installers/install-vagrant.sh
terraform:
	./installers/install-terraform.sh
packer:
	./installers/install-packer.sh
ansible:
	./installers/install-ansible.sh
aws:
	./installers/install-aws2-cli.sh
gcloudsdk:
	./installers/install-google-cloud-sdk.sh
azure:
	./installers/install-azure-cli.sh
ibmcloudsdk:
	./installers/install-ibm-cli.sh
helm:
	./installers/install-helm.sh
kubectl:
	./installers/install-azure-cli.sh
virtualbox:
	./installers/install-virtualbox.sh


# Add any other program here then in all sector

.PHONY: clean

clean:
	rm -f ./git-loglive.sh ./awscliv2.zip ./minikube ./vagrant.zip ./terraform.zip
	rm -fR ./git-vagrant ./aws
