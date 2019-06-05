SIZES=16 32 48 64 120 128 200 1024 152 144 180 192 512

LOGOS=$(addprefix weblate-logo-,$(addsuffix .png,$(SIZES))) $(addprefix weblate-transparent-,$(addsuffix .png,$(SIZES))) $(addprefix weblate-black-,$(addsuffix .png,$(SIZES)))

JPGS=weblate-logo-1024.jpg

all: $(LOGOS) $(JPGS) weblate.ico

weblate-logo-%.png: weblate.svg
	@../bin/svg2png.sh $< $@ $* $* 1.0 '#144d3f' 200

weblate-transparent-%.png: weblate.svg
	@../bin/svg2png.sh $< $@ $* $* 0.0 '#144d3f' ''

weblate-black-%.png: weblate-black.svg
	@../bin/svg2png.sh $< $@ $* $* 1.0 '#ffffff' 20

%.jpg: %.png
	convert $< -quality 75 $@

weblate.ico: weblate-logo-48.png weblate-logo-32.png weblate-logo-16.png
	icotool -c -o $@ $^

