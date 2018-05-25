prefix=/usr/local

install:
	install -m0755 bin/fsynth $(prefix)/bin
	install -m0755 bin/siggen $(prefix)/bin
	install -m0755 bin/signalgen $(prefix)/bin
	install -m0755 bin/smix $(prefix)/bin
	install -m0755 bin/soundinfo $(prefix)/bin
	install -m0755 bin/sweepgen $(prefix)/bin
	install -m0755 bin/swgen $(prefix)/bin
	install -m0755 bin/tones $(prefix)/bin

uninstall:
	rm -f $(prefix)/fsynth
	rm -f $(prefix)/siggen
	rm -f $(prefix)/signalgen
	rm -f $(prefix)/smix
	rm -f $(prefix)/soundinfo
	rm -f $(prefix)/sweepgen
	rm -f $(prefix)/swgen
	rm -f $(prefix)/tones
	
.PHONY: install uninstall
