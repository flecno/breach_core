EXO_BROWSER="__DUMMY__"
ARCH="x64"
GPG_SIGN=true

clean:
	rm -rf node_modules
	rm -rf out

install: clean
	npm install

dist_linux: install
	node dist/linux.js $(ARCH) $(EXO_BROWSER) $(GPG_SIGN)
dist_darwin: install
	node dist/darwin.js $(ARCH) $(EXO_BROWSER)


.PHONY: clean install dist_linux dist_darwin
