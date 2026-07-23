TECTONIC ?= tectonic
SHARED_SOURCES := cv-shared.tex Haotian.jpg
VARIANT_PDFS := \
	CV_Haotian_Liu_LLM_Agents.pdf \
	CV_Haotian_Liu_Multimodal_HAI.pdf \
	CV_Haotian_Liu_AI_Decision.pdf
DEFAULT_PDF := CV_Haotian_Liu.pdf

.PHONY: all clean

all: $(VARIANT_PDFS) $(DEFAULT_PDF)

CV_Haotian_Liu_LLM_Agents.pdf: resume.tex $(SHARED_SOURCES)
	$(TECTONIC) --keep-logs resume.tex
	mv -f resume.pdf $@

CV_Haotian_Liu_Multimodal_HAI.pdf: resume-multimodal-hai.tex $(SHARED_SOURCES)
	$(TECTONIC) --keep-logs resume-multimodal-hai.tex
	mv -f resume-multimodal-hai.pdf $@

CV_Haotian_Liu_AI_Decision.pdf: resume-ai-decision.tex $(SHARED_SOURCES)
	$(TECTONIC) --keep-logs resume-ai-decision.tex
	mv -f resume-ai-decision.pdf $@

$(DEFAULT_PDF): CV_Haotian_Liu_LLM_Agents.pdf
	cp -f $< $@

clean:
	rm -f resume.aux resume.log resume.out resume.synctex.gz resume.pdf \
	      resume-multimodal-hai.aux resume-multimodal-hai.log \
	      resume-multimodal-hai.out resume-multimodal-hai.synctex.gz \
	      resume-multimodal-hai.pdf \
	      resume-ai-decision.aux resume-ai-decision.log \
	      resume-ai-decision.out resume-ai-decision.synctex.gz \
	      resume-ai-decision.pdf \
	      $(VARIANT_PDFS) $(DEFAULT_PDF)
