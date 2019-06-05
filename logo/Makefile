SIZES=16 32 48 64 120 128 200 1024 152 144

LOGOS=$(addprefix weblate-logo-,$(addsuffix .png,$(SIZES))) $(addprefix weblate-transparent-,$(addsuffix .png,$(SIZES)))

JPGS=weblate-logo-1024.jpg

all: $(LOGOS) $(JPGS) weblate.ico

weblate-logo-%.png: weblate.svg
	@../bin/svg2png.sh $< $@ $* $* 1.0 '#144d3f' 200

weblate-transparent-%.png: weblate.svg
	@../bin/svg2png.sh $< $@ $* $* 0.0 '#144d3f' ''

%.jpg: %.png
	convert $< -quality 75 $@

weblate.ico: weblate-logo-16.png weblate-logo-32.png weblate-logo-48.png
	icotool -c -o $@ $^

