NODE_DIR=node_modules/
NODE_BIN=$(NODE_DIR).bin/
TRACEUR=traceur
VENDOR_DIR=vendor/
SRC_DIR=src/
BUILD_DIR=build/
SOURCES:=$(wildcard $(SRC_DIR)*.js)

all: $(VENDOR_DIR)traceur-runtime.js $(VENDOR_DIR)angular.js $(VENDOR_DIR)angular-route.js $(VENDOR_DIR)angular-resource.js $(VENDOR_DIR)material.css $(VENDOR_DIR)material.js $(BUILD_DIR)main-compiled.js $(BUILD_DIR)style.css

$(BUILD_DIR)style.css: scss/style.scss
	$(NODE_BIN)node-sass $< $@

$(VENDOR_DIR)traceur-runtime.js: $(NODE_DIR)traceur/bin/traceur-runtime.js
	install -m644 $< $@

$(VENDOR_DIR)angular.js: $(NODE_DIR)angular/angular.js
	install -m644 $< $@

$(VENDOR_DIR)angular-route.js: $(NODE_DIR)angular-route/angular-route.js
	install -m644 $< $@

$(VENDOR_DIR)angular-resource.js: $(NODE_DIR)angular-resource/angular-resource.js
	install -m644 $< $@

$(VENDOR_DIR)material.js: $(NODE_DIR)material-design-lite/material.js
	install -m644 $< $@

$(VENDOR_DIR)material.css: $(NODE_DIR)material-design-lite/material.css
	install -m644 $< $@

$(BUILD_DIR)main-compiled.js: $(SOURCES)
	cd $(SRC_DIR) && ../$(NODE_BIN)$(TRACEUR) --out main-compiled.js main.js
	mv $(SRC_DIR)main-compiled.js $(BUILD_DIR)main-compiled.js

clean:
	rm $(VENDOR_DIR)*
	rm $(BUILD_DIR)*

.PHONY: all
