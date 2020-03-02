# ngx\_mruby-module-builder

Build ngx\_mruby dynamic module for CentOS.

## Usage

Just execute `make`.

```
$ make
```

You can also specify versions of nginx and ngx\_mruby with make arguments.

```
$ make NGINX_VERSION:=1.17.8 NGX_MRUBY_VERSION:=2.2.0
```

And, ngx\_mruby (`ngx_http_mruby_module.so`) and depended NDK (`ndk_http_module.so`) module files are created in your local `dist` directory.

```
$ ls ./dist
ndk_http_module.so              ngx_http_mruby_module.so
```
