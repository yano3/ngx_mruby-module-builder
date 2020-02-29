# ngx\_mruby-module-builder

Build ngx\_mruby dynamic module for CentOS.

## Usage

Just execute `make`.

```
$ make
```

And, ngx\_mruby (`ngx_http_mruby_module.so`) and depended NDK (`ndk_http_module.so`) module files are created in your local `dist` directory.

```
$ ls ./dist
ndk_http_module.so              ngx_http_mruby_module.so
```
