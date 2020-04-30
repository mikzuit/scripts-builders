all: vagrant terraform ansible aws gitloglive docker-compose docker-machine minikube clean

partial: vagrant

ansible:
	./installers/install-ansible.sh
aws:
	./installers/install-aws2-cli.sh
gitloglive:
	./installers/install-git-loglive.sh
docker-compose:
	./installers/install-docker-compose.sh
docker-machine:
	./installers/install-docker-machine.sh
minikube:
	./installers/install-minikube.sh
vagrant:
	./installers/install-vagrant.sh
terraform:
	./installers/install-terraform.sh

# Add robomongo here

# Add azure here

# Add any other program here then in all sector

.PHONY: clean

clean:
	rm -f ./git-loglive.sh ./awscliv2.zip ./minikube ./vagrant.zip ./terraform.zip
	rm -fR ./git-vagrant ./aws