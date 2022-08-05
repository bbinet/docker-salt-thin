docker-salt-thin
================

Docker container to generate salt-thin tarballs


Build
-----

To create the image `bbinet/salt-thin`, execute the following command in the
`docker-salt-thin` folder:

    docker build -t bbinet/salt-thin .

You can now push the new image to the public registry:
    
    docker push bbinet/salt-thin


Run
---

For example:

    $ docker pull bbinet/salt-thin

    $ docker run --rm \
        -v $(pwd):/tmp/thin \
        bbinet/salt-thin

    $ md5sum thin.tgz

    $ docker run --rm bbinet/salt-thin pip3 freeze
