push:
	docker buildx build -t dinhthienvan1/test3 --platform linux/arm64,linux/amd64 --push  .