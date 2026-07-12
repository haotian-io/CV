TECTONIC ?= tectonic
PDF := resume.pdf
SOURCES := resume.tex cv-shared.tex Haotian.jpg

.PHONY: all clean

all: $(PDF)

$(PDF): $(SOURCES)
	$(TECTONIC) --keep-logs resume.tex

clean:
	rm -f resume.aux resume.log resume.out resume.synctex.gz resume.pdf
