IMAGES=$(wildcard *.svg)

LOGOS=$(addsuffix .png,$(basename $(IMAGES)))

all: $(LOGOS)

%.png: %.svg
	@../bin/svg2png.sh $< $@ "" "" 0.0 '#144d3f' ''
