REGION := us-east-1
STACK_NAME := useless-machine-$(shell date +%s)

.DEFAULT_GOAL := deploy

cfn-deploy :
	@aws cloudformation deploy \
		--profile personal \
		--region $(REGION) \
		--stack-name $(STACK_NAME) \
		--template-file template.yml \
		--capabilities \
			CAPABILITY_IAM \
			CAPABILITY_NAMED_IAM

deploy : cfn-deploy
	@echo
	@echo Navigate to:
	@aws cloudformation describe-stacks \
		--profile personal \
		--region $(REGION) \
		--stack-name $(STACK_NAME) \
		--query 'Stacks[*].Outputs[?OutputKey==`UselessURL`].OutputValue' \
		--output text
