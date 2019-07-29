# Vind Solr Server
Vind Solr Server provides a dockerized Solr Server that already includes a core following the Vind Schema (https://github.com/RBMHTechnology/vind).

## Build Docker image
The image can be found on Dockerhub (redlinkgmbh/vind-solr-server). You can also build it by yourself:
```
docker build -t myimages/vind-solr-server .
```

## Use Docker image
Run the image and expose the Solr standard port. The number of the server is alligned to the Vind version.
```
docker run -p 8983:8983 redlinkgmbh/vind-solr-server:{vind-version-based-tag}
```
Now you can access the core named *vind* on http://localhost:8983/solr.

## Tags

Currently the follwing tags can be used:

* **1.3.0** -> *vind version 1.3.0, solr version 5.5.4*
* **2.0.0-RC1** -> *vind version 2.0.0-RC1, solr version 7.5.0*
* **2.0.0** -> *vind version 2.0.0, solr version 7.5.0*
* **2.0.1** -> *vind version 2.0.1, solr version 7.5.0*
* **2.1.0** -> *vind version 2.1.0, solr version 7.5.0*
* **2.1.3** -> *vind version 2.1.3, solr version 7.5.0*
* **2.1.4** -> *vind version 2.1.4, solr version 7.5.0*
* **2.1.5** -> *vind version 2.1.5, solr version 7.5.0*
