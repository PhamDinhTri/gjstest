depend:
	(sed -n 'p; /^## Dependencies: (autogenerated) ##/q' Makefile && \
	    gcc -MM $(CPPFLAGS) $(OBJS:.o=.cc)) >Makefile.tmp
	mv Makefile Makefile.bak
	mv Makefile.tmp Makefile