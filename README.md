# Deltachat_dockerfile
contains the Dockerfile and the Instructions to setup deltachat to develop deltabots.

## Instructions:

1. Do a `git clone https://github.com/Lin2D2/Deltachat_dockerfile.git`, this will clone this repo and you will get in the process the project folder to use for the developmnt.

2. Install docker.

   https://docs.docker.com/install/

3. Run `docker build -f Dockerfile -t deltachat .` in the folder which was created when you run `git clone` in step 1, it is named like this repo, [more infos about docker build](https://docs.docker.com/engine/reference/commandline/image_build/).

4. When the build finishes successfully, you can run `docker images` and should see an image named deltachat.

   | REPOSITORY      | TAG          | IMAGE ID        | CREATED         | SIZE   |
   | --------------- |:------------:| ---------------:| ---------------:| ------:|
   | deltachat       | latest       | 4f500f13c75c    | 3 seconds ago   | 3.86GB |


5. To start the container you need to run `docker run --name deltachat -it -d deltachat`, [more infos about docker run](https://docs.docker.com/engine/reference/commandline/run/).
   Now we can check if the container is running using `docker ps`, if we see an container running named deltachat, like shown below, we can contiue, if not check if you did run the container correctly.
   
   |CONTAINER ID     |IMAGE         |COMMAND       |CREATED           |STATUS              |PORTS         |NAMES    |
   | --------------- |:------------:|:------------:|:----------------:|:------------------:|:------------:|:-------:|
   |d8581538be1f     |deltachat     |"/bin/bash"   |25 seconds ago    |Up 5 seconds        |              |deltachat|

   
   You can connect to the running container using `docker exec -it deltachat bash`, [more infos about docker exec](https://docs.docker.com/engine/reference/commandline/exec/).
   
   If you want to use the container right away you can leave the `-d` out of the `docker run`.

   To leave the container press `Ctrl + d`, to stop the container from running use `docker kill deltachat`

6. To start the container, after restarting your system or after you stopped it, use `docker start deltachat`, and connect with `docker exec -it deltachat bash` as shown in step 5, [more infos about docker start](https://docs.docker.com/engine/reference/commandline/start/).

   You could also direktly connect to the container on startup using `docker start -a deltachat`, but i had some problems exiting the container after this method.
