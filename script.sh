

# FROM INSTRUCTION
docker build -t sandriansyafridev/from from


# RUN INSTRUCTION
docker build -t sandriansyafridev/run run

# COMMAND INSTRUCTION
docker build -t sandriansyafridev/cmd cmd
docker container create --name command sandriansyafridev/cmd

# LABEL INSTRUCTION
docker build -t sandriansyafridev/label label
docker container create --name label sandriansyafridev/label
docker container start label
docker container inspect label


# ADD INSTRUCTION
docker build -t sandriansyafridev/add add
docker container create --name add sandriansyafridev/add
docker container start add
docker container logs add
docker container inspect add

# COPY INSTRUCTION
docker build -t sandriansyafridev/copy copy
docker container create --name copy sandriansyafridev/copy
docker container start copy
docker container logs copy
docker container inspect copy

# DOCKERIGNORE INSTRUCTION
docker build -t sandriansyafridev/ignore ignore
docker container create --name ignore sandriansyafridev/ignore
docker container start ignore
docker container logs ignore
docker container inspect ignore



# DOCKERIGNORE INSTRUCTION
docker build -t sandriansyafridev/expose expose
docker container create --name expose --publish 8080:8080 sandriansyafridev/expose
 docker container logs expose
docker container inspect expose
docker container stop expose


# DOCKERIGNORE ENV
docker build -t sandriansyafridev/env env
docker container create --name env --publish 8081:8081 sandriansyafridev/env
docker container inspect env
docker container start env
docker container logs env
docker container stop env

# DOCKERIGNORE VOLUME
docker build -t sandriansyafridev/volume volume
docker container create --name volume --publish 8082:8082 sandriansyafridev/volume
docker container inspect volume
docker container start volume
docker container logs volume
docker container stop volume


# DOCKERIGNORE WORKDIR
docker build -t sandriansyafridev/workdir workdir
docker container create --name workdir --publish 8083:8083 sandriansyafridev/workdir
docker container inspect workdir
docker container start workdir
docker container logs workdir
docker container stop workdir

# DOCKERIGNORE ENTRYPOINT
docker build -t sandriansyafridev/entrypoint entrypoint 
docker container create --name entrypoint --publish 8085:8085 sandriansyafridev/entrypoint
docker container inspect entrypoint
docker container start entrypoint
docker container logs entrypoint
docker container stop entrypoint



# DOCKERIGNORE MULTISTAGE
docker build -t sandriansyafridev/multistage multistage 
docker container create --name multistage --publish 8080:8080 sandriansyafridev/multistage
docker container inspect multistage
docker container start multistage
docker container logs multistage
docker container stop multistage