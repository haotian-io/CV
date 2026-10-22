# Haotian Liu — Academic CV

This repository contains the maintainable LaTeX source and current PDF for Haotian Liu's one-page academic CV.

- [Current PDF](./CV_Haotian_Liu.pdf)
- `resume.tex`: document entry point and font setup
- `cv-shared.tex`: CV content, hyperlinks, and layout rules
- `Haotian.jpg`: portrait source

## Build

The exact typography uses the macOS system fonts Avenir Next and Charter. Install [Tectonic](https://tectonic-typesetting.github.io/) and run:

```bash
make
```

This generates `CV_Haotian_Liu.pdf`. Run `make clean` to remove generated LaTeX artifacts.
