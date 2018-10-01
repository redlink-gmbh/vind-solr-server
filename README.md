#Vind Solr Server
Vind Solr Server provides a dockerized Solr Server that already includes a core following the Vind Schema (https://github.com/RBMHTechnology/vind).

## Build Docker image
The image can be found on Dockerhub (redlinkgmbh/vind-solr-server). You can also build it by yourself:
```
docker build -t myimages/vind-solr-server .
```

## Use Docker image
Run the image and expose the Solr standard port. The number of the server is alligned to the Vind version.
```
docker run -p 8983:8983 redlinkgmbh/vind-solr-server:1.3.0
```
Now you can access the core named *vind* on http://localhost:8983/solr.
