FROM condaforge/mambaforge:24.3.0-0

# ENV SSL_NO_VERIFY=1
# RUN conda config --set ssl_verify false


# Set the working directory
WORKDIR /home

# Make sure the contents of our repo are in the current directory
COPY . .

# Add pip configuration
RUN mkdir -p /root/.pip && \
    echo "[global]\ntrusted-host = pypi.python.org\n               pypi.org\n               files.pythonhosted.org" > /root/.pip/pip.conf

# Create the conda environment
RUN mamba env create -n worldstrat --file environment.yaml

# Ensure the environment is activated and Jupyter Lab is started
RUN echo "source activate worldstrat" >> ~/.bashrc

EXPOSE 8888

CMD ["bash", "-c", "source activate worldstrat && jupyter lab --ip=0.0.0.0 --no-browser --allow-root"]