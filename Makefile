.PHONY: image push test

push: image
	docker push registry.cn-shanghai.aliyuncs.com/jibutech/rsyslog-server:latest

image:
	docker build . -t registry.cn-shanghai.aliyuncs.com/jibutech/rsyslog-server:latest

