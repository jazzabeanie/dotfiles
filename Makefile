ubuntu: update
	ansible-playbook -v -D -i playbooks/inventory playbooks/ubuntu.yml

update:
	git pull
