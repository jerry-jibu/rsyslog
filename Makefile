.PHONY: image push test

push: image
	docker push registry.cn-shanghai.aliyuncs.com/jibutech/rsyslog-server:latest
	docker push registry.cn-shanghai.aliyuncs.com/jibutech/syslog-ng-server:latest

image:
	docker build . -t registry.cn-shanghai.aliyuncs.com/jibutech/rsyslog-server:latest
	docker build -t registry.cn-shanghai.aliyuncs.com/jibutech/syslog-ng-server:latest -f ./charts/syslog-ng-helm-chart/Dockerfile .

