IMAGE := alpine/fio
APP:="scripts/archlinux-req.sh"

deploy-stackstorm-ubuntu:
	bash scripts/deploy-stackstorm-ubuntu.sh

deploy-stackstorm-centos:
	bash scripts/deploy-stackstorm-centos.sh

deploy-libvirt:
	bash scripts/deploy-libvirt.sh

deploy-vagrant:
	bash scripts/deploy-vagrant.sh

push-image:
	docker push $(IMAGE)

.PHONY: deploy-vagrant deploy-libvirt deploy-zabbix push-image
