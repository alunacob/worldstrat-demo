FROM condaforge/mambaforge:24.3.0-0

ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

RUN conda update -y -n base -c conda-forge conda

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}

USER ${NB_USER}


# Set the working directory
WORKDIR ${HOME}

# Make sure the contents of our repo are in the current directory
COPY . .

# Create the conda environment
RUN mamba env create -n worldstrat --file environment.yaml

# Ensure the environment is activated and Jupyter Lab is started
RUN echo "conda activate worldstrat" >> ~/.profile
RUN echo "conda activate worldstrat" >> ~/.bashrc
ENV PATH ${HOME}/.conda/envs/worldstrat/bin:$PATH

EXPOSE 8888

CMD ["bash", "-c", "source activate worldstrat && jupyter lab --ip=0.0.0.0 --no-browser --allow-root"]
