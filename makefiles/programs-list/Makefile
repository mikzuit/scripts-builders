# all: vagrant terraform ansible aws gitloglive docker-compose docker-machine minikube clean

# groups of groups
all: languages_runtimes media_editors developers devops

dev_devops_media: first developers devops media_editors


# groups tasks
languages_runtimes: golang rustlang

media_editors:
	./installers/install-media-editing.sh

developers: vagrant docker docker_compose docker_machine gitloglive virtualbox

devops: ansible aws terraform ibmcloudsdk azure gcloudsdk helm

# individuals
first:
	./installers/install-first.sh
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


# Add robomongo here

# Add azure here

# Add config globals for git

# Add any other program here then in all sector

.PHONY: clean

clean:
	rm -f ./git-loglive.sh ./awscliv2.zip ./minikube ./vagrant.zip ./terraform.zip
	rm -fR ./git-vagrant ./aws