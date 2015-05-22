CFG_OCTAVE = --prefix=$(ROOT)/octave \
	--with-blas="-lblas" --with-lapack="-llapack" \
	--disable-docs --disable-readline \
	CFLAGS="$(TOPT)" CXXFLAGS="$(TOPT)" FFLAGS="$(TOPT)"
#	 --disable-java \
#	gl_cv_func_gettimeofday_clobber=no
## ?octave_cv_fortran_integer_size
## ?octave_cv_ieee754_data_format
.PHONY: octave
octave: $(SRC)/$(OCTAVE)/README
	rm -rf $(TMP)/$(OCTAVE) && mkdir $(TMP)/$(OCTAVE) &&\
	cd $(TMP)/$(OCTAVE) &&\
	$(XPATH) $(SRC)/$(OCTAVE)/$(TCFG) $(CFG_OCTAVE) &&\
	$(MAKE) && $(INSTALL)
	
.PHONY: octave-mk
octave-mk:	
	cd $(TMP)/$(OCTAVE) && $(MAKE) && $(INSTALL)
