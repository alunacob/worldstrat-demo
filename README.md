# WORLDSTRAT demo


## Run the notebook on Binder

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/alunacob/worldstrat-demo/master?urlpath=lab)

## Run the notebook locally using docker

Clone this repository with:

```bash
git clone https://github.com/alunacob/worldstrat-demo.git
```

Go to the directory containing the cloned repository:

```bash
cd worldstrat-demo
```

Use docker compose to build the docker image:

```bash
docker-compose build
```

This step can take a few minutes...

Finally run the docker with:

```
docker-compose up
```

Open a browser window at the address http://0.0.0.0:9005 or http://127.0.0.1:9005 and run the notebook


 
 
 ### Requirements: 
 This [Binder](https://mybinder.readthedocs.io/en/latest/introduction.html#what-is-a-binder) repository was set up so that you can participate with no pre-requirement to be installed on your side.
 However, the notebook must target a computing environment with 2 GB of RAM. After some inactivity, the docker container is culled. Access to a web browser should be enough for your successful participation.
 
