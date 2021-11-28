# radvd in a box

...that's it.

This is an alpine box, so it's fairly small.

# Running

Something along the lines of:

    docker run --rm \
        --net=host --cap-add=NET_RAW \
        -v /etc/radvd/%i.conf:/etc/radvd.conf:ro \
        docker.io/radvd/radvd -d 2 -m stderr

...substituting `rsrchboy/radvd` if you're in a hub mood :)

# see also

`man 5 radvd.conf`
