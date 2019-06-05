all: 287x66-black.png 287x66-grey.png 287x66-white.png 88x31-black.png 88x31-grey.png 88x31-white.png

287x66-black.png: 287x66.svg
	@../bin/svg2png.sh $< $@ 287 66 1.0 '#000000' 16

287x66-white.png: 287x66.svg
	@../bin/svg2png.sh $< $@ 287 66 1.0 '#ffffff' 16

287x66-grey.png: 287x66.svg
	@../bin/svg2png.sh $< $@ 287 66 1.0 '#e6e6e6' 16

88x31-black.png: 88x31.svg
	@../bin/svg2png.sh $< $@ 88 31 1.0 '#000000' 16

88x31-white.png: 88x31.svg
	@../bin/svg2png.sh $< $@ 88 31 1.0 '#ffffff' 16

88x31-grey.png: 88x31.svg
	@../bin/svg2png.sh $< $@ 88 31 1.0 '#e6e6e6' 16
