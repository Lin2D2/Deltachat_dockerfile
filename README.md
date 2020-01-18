# Deltachat_dockerfile
contains the Dockerfile and the Instructions to setup deltachat to develop deltabot's or other

## Instructions:

1. do a `git clone https://github.com/Lin2D2/Deltachat_dockerfile.git`, this will clone this repo and you will get in the process the project folder to use for the developmnt.

2. install docker.

   https://docs.docker.com/install/

3. run `docker build -f Dockerfile -t deltachat .` in the folder wich was created when you run `git clone` in step 1, it is named like this repo.

   https://docs.docker.com/engine/reference/commandline/image_build/

4. When the build finishes successfully, you can run `docker images` and should see an image named deltachat.

   | REPOSITORY      | TAG          | IMAGE ID        | CREATED         | SIZE   |
   | --------------- |:------------:| ---------------:| ---------------:| ------:|
   | deltachat       | latest       | 4f500f13c75c    | 3 seconds ago   | 3.86GB |


5. to start the container you need to run `docker run --name deltachat -it deltachat`.

   https://docs.docker.com/engine/reference/commandline/run/
