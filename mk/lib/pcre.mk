CFG_PCRE = CFLAGS="$(TOPT)" CXXFLAGS="$(TOPT)"
.PHONY: pcre
pcre: $(SRC)/$(PCRE)/README
	rm -rf $(TMP)/$(PCRE) && mkdir $(TMP)/$(PCRE) &&\
	cd $(TMP)/$(PCRE) &&\
	$(XPATH) $(SRC)/$(PCRE)/$(TCFG) $(CFG_PCRE) &&\
	$(MAKE) && $(INSTALL)-strip && $(MVCONFIG)
