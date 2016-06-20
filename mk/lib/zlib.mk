CFG_ZLIB = --prefix=$(ROOT)

.PHONY: zlib
zlib: $(PACK)/zlib
$(PACK)/zlib: $(SRC)/$(ZLIB)/README
	cd $(SRC)/$(ZLIB) && make distclean
	cd $(SRC)/$(ZLIB) && \
	$(XPATH) CHOST=$(TARGET) $(SRC)/$(ZLIB)/configure $(CFG_ZLIB) &&\
	$(XPATH) $(MAKE) &&\
	$(call INSTPACK,$(SRC)/$(ZLIB),zlib,install) 
