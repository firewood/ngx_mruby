LIBS := `make -C nginx -f objs/Makefile -n objs/nginx -W objs/src/core/nginx.o`

nginx.a: nginx/objs/nginx
	echo $(LIBS) | awk -v 'RS= ' '/\.o/ {print "nginx/" $$0}' | xargs ar rv nginx.a
