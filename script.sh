
# Basic Command
docker build -t [username]/[image-name:tag] [path-dockerfile]
    # username : username name account in dockerhub or any
    # image-name : assign name to new image you want to create
    # tag : assign version to image
    # path-dockerfile : location 'Dockerfile', noted it's relative in your terminal bash  

# FROM Instruction
docker build -t sandriansyafridev/from from


# RUN Instruction
docker build -t sandriansyafridev/run run
docker build -t sandriansyafridev/run run --progress=plain

# CMD Instruction
docker build -t sandriansyafridev/cmd cmd
docker run -d --name contoh_cmd sandriansyafridev/cmd
docker logs contoh_cmd


# LABEL Instruction
docker build -t sandriansyafridev/label label


# ADD Instruction
docker build -t sandriansyafridev/add add --progress=plain

# ADD Instruction
docker build -t sandriansyafridev/copy copy --progress=plain

# .dockerigonre 
docker build -t sandriansyafridev/ignore ignore --progress=plain --no-cache

# EXPOSE Instruction 
docker build -t sandriansyafridev/expose expose 
docker run -d \
 --name contoh_expose \
 --publish 8080:8080 \
sandriansyafridev/expose


# ENV Instruction 
docker build -t sandriansyafridev/env env 
docker run -d \
 --name contoh_env \
 --publish 8080:8080 \
sandriansyafridev/env


# VOLUME Instruction 
docker build -t sandriansyafridev/volume volume 
docker run -d \
 --name contoh_volume \
 --publish 8082:8082 \
sandriansyafridev/volume


# WORKDIR Instruction 
docker build -t sandriansyafridev/workdir workdir 
docker run -d \
 --name contoh_workdir \
 --publish 8083:8083 \
sandriansyafridev/workdir

# ARG Instruction 
docker build -t sandriansyafridev/arg arg --progress=plain --build-arg app=potatro 
docker run -d \
 --name contoh_arg \
sandriansyafridev/arg


# ENTRYPOINT Instruction 
docker build -t sandriansyafridev/entrypoint entrypoint --progress=plain --no-cache
docker run -d \
 --name contoh_entrypoint \
sandriansyafridev/entrypoint


# MULTI-STAGE Instruction 
docker build -t sandriansyafridev/multistage multistage --progress=plain --no-cache
docker run -d \
 --name contoh_multistage \
sandriansyafridev/multistage