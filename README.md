# ngx\_mruby-module-builder

Build [ngx\_mruby](https://ngx.mruby.org/) dynamic module for CentOS.

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

### Specify version

You can specify versions of nginx and ngx\_mruby with make arguments.

```
$ make NGINX_VERSION:=1.17.8 NGX_MRUBY_VERSION:=2.2.1
```

### Customize build\_config.rb

If you want to adjust build configuration, you can edit `build_config.rb`.
This file is used instead of `build_config.rb` bundled with ngx\_mruby on build.
