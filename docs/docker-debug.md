## Some resources to help debug things around Dockerizing app

`$ docker build .` in your directory will build a container for you real quick
`$ docker run <that last ID docker build spit out>` to see if it even runs
`$ docker run -it --entrypoint /bin/bash <container name or id>` to get inside and play around


