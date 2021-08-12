NGINX_VERSION := 1.21.1
NGX_MRUBY_VERSION := 2.2.3

all: build cp

build:
	docker build -t ngx_mruby_module --build-arg NGINX_VERSION=$(NGINX_VERSION) --build-arg NGX_MRUBY_VERSION=$(NGX_MRUBY_VERSION) .
cp:
	$(eval container := $(shell docker create ngx_mruby_module))
	docker cp $(container):/tmp/ngx_http_mruby_module.so ./dist/
	docker cp $(container):/tmp/ndk_http_module.so ./dist/
	docker rm $(container)
