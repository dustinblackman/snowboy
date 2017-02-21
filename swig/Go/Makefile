# Example Makefile that converts snowboy c++ library (snowboy-detect.a) to
# python library (_snowboydetect.so, snowboydetect.py), using swig.

# Please use swig-3.0.10 or up.
SWIG := swig
SNOWBOYDETECTSWIGITF = snowboy-detect-swig.i
SNOWBOYDETECTGO = snowboydetect.go
GOBUILDPATH := $$GOPATH/src/github.com/Kitt-AI/snowboydetect
TOPDIR := ../../

build:
	cp $(TOPDIR)include/snowboy-detect.h .
	$(SWIG) -I$(TOPDIR) -go -cgo -intgosize 64 -c++ $(SNOWBOYDETECTSWIGITF)
	rm ./snowboy-detect.h

install: build
	rm -rf $(GOBUILDPATH)
	mkdir -p $(GOBUILDPATH)
	cp $(SNOWBOYDETECTGO) $(GOBUILDPATH)
	cp ./snowboy-detect-swig_wrap.cxx $(GOBUILDPATH)
	cp $(TOPDIR)include/snowboy-detect.h $(GOBUILDPATH)

clean:
	rm *.go *.cxx *.h
