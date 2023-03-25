git:
	##git pull
	rm -rf .terraform # To eliminate the issue and redownload the code and init
dev-apply: git
	cd aws-parameters
	terraform init -backend-config=env-dev/state.tfvars
	terraform apply -auto-approve -var-file=env-dev/main.tfvars
	cd ..
	terraform init -backend-config=env-dev/state.tfvars
	terraform apply -auto-approve -var-file=env-dev/main.tfvars

dev-destroy:
	terraform init -backend-config=env-dev/state.tfvars
	terraform destroy -auto-approve -var-file=env-dev/main.tfvars