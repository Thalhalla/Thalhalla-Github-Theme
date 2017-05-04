SCHWARZ=github-thalhalla

INPUT_SCSS=${SCHWARZ}.scss
OUTPUT_CSS=${SCHWARZ}.css

all: clean vim build clip

build:
	sass ${INPUT_SCSS} ${OUTPUT_CSS}

clean:
	-@rm -f ${OUTPUT_CSS}
	-@rm -f ${OUTPUT_CSS}.map

clip:
	-@cat ${OUTPUT_CSS}|xclip -i  -selection clipboard

test:
	sass -c ${INPUT_SCSS}

vim:
	vim github-thalhalla.scss
