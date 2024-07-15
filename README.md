# jupyter-to-pdf

A docker image with all the tools needed to convert from a Jupyter Notebook to a nice PDF, and nothing more

## Usage

### Compile docker image

In this folder, run the following command to build the docker image:

```bash
docker build -t ipynb-to-pdf .
```

### Convert Jupyter Notebook to PDF

```bash
docker run --rm -v "$(pwd):/data" ipynb-to-pdf jupyter nbconvert --to pdf test.ipynb
```

### Hide input code cells

```bash
docker run --rm -v "$(pwd):/data" ipynb-to-pdf jupyter nbconvert --to pdf --no-input test.ipynb
```

