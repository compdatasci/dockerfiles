## Docker Image for Data Computing with Jupyter Notebook.

This Docker image is for R with Jupyter Notebook. This images inherits [compdatasci/base](https://hub.docker.com/r/compdatasci/base). 

[![Build Status](https://travis-ci.org/compdatasci/dockerfiles.svg?branch=docker-r)](https://travis-ci.org/compdatasci/dockerfiles)   [![Docker Image](https://images.microbadger.com/badges/image/compdatasci/r-jupyter.svg)](https://microbadger.com/images/compdatasci/r-jupyter)

## Running Jupyter Notebook with Docker

To install Docker for your platform (Windows, MacOS, Linux, cloud platforms, etc.), follow the instructions at [docker.com](https://docs.docker.com/engine/getstarted/step_one/).

Once you have Docker installed, you can start Jupyter Notebook using the following command in the directory that contains your notebooks:
```
    docker-jupyter mynotebook.ipynb
```
where the `docker-jupyter` script can be downloaded at <https://github.com/datacompsci/r-dockerfiles/raw/master/docker-jupyter>.

## Running Jupyter Notebook with Docker Toolbox

If your version of Windows does not support Docker, you may need to [install Docker Toolbox](https://docs.docker.com/toolbox/toolbox_install_windows/) instead. After you have installed Docker Toolbox, start it and run the following command in a Docker Toolbox terminal in your work directory:
```
     docker run --rm -w /home/compdatasci/shared -v $(pwd):/home/compdatasci/shared -d -p \
    $(docker-machine ip $(docker-machine active)):8088:8088 compdatasci/r-jupyter \
    'jupyter-notebook --no-browser --ip=0.0.0.0 --port=8088'
```

If successful, you will see some screen out such as:
```
...
Copy/paste this URL into your browser when you connect for the first time,
to login with a token:
http://0.0.0.0:8088/?token=2634a8f67ed91c582929e1a1137b8b3b400385b35afab19e
```

Copy and paste the URL into a web browser (such as Google Chrome). If port `8088` is in use, you can change it to a different port (say `8089`) by replacing `8088` with `8089 in the` `docker run` command.

When you have finished using Jupyter Notebook, use Control-C to stop this server and shut down all kernels (twice to skip confirmation).

## Running as Linux environment

You can also run the image as a Linux environment for R. You can run the image using the following command:

    docker run --rm -ti -w/home/compdatasci/shared -v $(pwd):/home/compdatasci/shared \
    compdatasci/r-jupyter:latest

which would share your current working directory into the container as `~/shared`. *Note that you should only save files under the shared directory because all other files will be lost when the process ends.*
