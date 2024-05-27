FROM condaforge/mambaforge:24.3.0-0


#USER jovyan
# Make sure the contents of our repo are in ${HOME}
COPY . . 

RUN mamba env create -n worldstrat --file environment.yaml

EXPOSE 8888

CMD "jupyter lab"

