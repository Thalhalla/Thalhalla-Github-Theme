SCHWARZ=github-thalhalla

INPUT_SCSS=${SCHWARZ}.scss
OUTPUT_CSS=${SCHWARZ}.css
MIN_CSS=${SCHWARZ}.css.min

all: clean vim build miniclip

build:
	sass ${INPUT_SCSS} ${OUTPUT_CSS}
	minify ${OUTPUT_CSS} -o ${MIN_CSS}

clean:
	-@rm -f ${OUTPUT_CSS}
	-@rm -f ${OUTPUT_CSS}.map

clip:
	-@cat ${OUTPUT_CSS}|xclip -i  -selection clipboard

miniclip:
	-@cat ${MIN_CSS}|xclip -i  -selection clipboard

test:
	sass -c ${INPUT_SCSS}

vim:
	vim github-thalhalla.scss
