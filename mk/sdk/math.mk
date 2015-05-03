
CFG_ECL =

.PHONY: ecl
ecl: $(SRC)/$(ECL)/README
	cd $(SRC)/$(ECL) && $(XPATH) ./$(BCFG) $(CFG_ECL) && $(MAKE)
	
CFG_OCTAVE = --prefix=$(ROOT)/octave --disable-docs F77="$(TFORTRAN)"
#"$(TFORTRAN) -L$(ROOT)/lib" \
#	--with-libdir=$(ROOT)/lib FFLAGS="-ff2c"
#--enable-lite-kernel --disable-docs --help 
.PHONY: octave
octave: $(SRC)/$(OCTAVE)/README
	rm -rf $(TMP)/$(OCTAVE) && mkdir $(TMP)/$(OCTAVE) &&\
	cd $(TMP)/$(OCTAVE) &&\
	$(XPATH) $(SRC)/$(OCTAVE)/$(TCFG) $(CFG_OCTAVE)

CFG_MAXIMA =
.PHONY: maxima
maxima: $(SRC)/$(MAXIMA)/README

# http://www.sandia.gov/~jhlaros/publications/light-os-WMSCI-final.pdf
CFG_MPICH = RSHCOMMAND=/usr/bin/ssh --with-device=ch_p4 \
	--without-romio --disable-sharedlib 
.PHONY: mpich
mpich: $(SRC)/$(MPICH)/README
	rm -rf $(TMP)/$(MPICH) && mkdir $(TMP)/$(MPICH) &&\
	cd $(TMP)/$(MPICH) &&\
	$(XPATH) $(SRC)/$(MPICH)/$(TCFG) &&\
	$(MAKE)
