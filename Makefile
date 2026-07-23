TECTONIC ?= tectonic
PDF := CV_Haotian_Liu.pdf
SOURCES := resume.tex cv-shared.tex Haotian.jpg

.PHONY: all clean

all: $(PDF)

$(PDF): $(SOURCES)
	$(TECTONIC) --keep-logs resume.tex
	mv -f resume.pdf $(PDF)

clean:
	rm -f resume.aux resume.log resume.out resume.synctex.gz \
	      resume.pdf CV_Haotian_Liu.pdf