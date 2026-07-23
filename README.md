# Haotian Liu — Academic CVs

This repository contains the maintainable LaTeX source and three tailored
one-page academic CVs for Japanese master's research outreach.

- [Reliable LLM Agents & AI4SE](./CV_Haotian_Liu_LLM_Agents.pdf)
- [Multimodal & Human-AI Systems](./CV_Haotian_Liu_Multimodal_HAI.pdf)
- [AI Evaluation & Decision Intelligence](./CV_Haotian_Liu_AI_Decision.pdf)
- [Default/current CV](./CV_Haotian_Liu.pdf), identical to the LLM/AI4SE version

Source structure:

- `resume.tex`: default LLM/AI4SE entry point
- `resume-multimodal-hai.tex`: multimodal and human-AI entry point
- `resume-ai-decision.tex`: AI evaluation and decision entry point
- `cv-shared.tex`: shared facts, project descriptions, hyperlinks, and layout
- `Haotian.jpg`: portrait source

## Build

The exact typography uses the macOS system fonts Avenir Next and Charter. Install [Tectonic](https://tectonic-typesetting.github.io/) and run:

```bash
make
```

This generates all three named PDFs and refreshes `CV_Haotian_Liu.pdf`. Run
`make clean` to remove generated LaTeX artifacts and PDFs.
