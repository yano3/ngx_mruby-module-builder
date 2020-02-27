all: build cp

build:
	docker build -t ngx_mruby_module .
cp:
	$(eval container := $(shell docker create ngx_mruby_module))
	docker cp $(container):/tmp/ngx_http_mruby_module.so ./dist/
	docker cp $(container):/tmp/ndk_http_module.so ./dist/
	docker rm $(container)