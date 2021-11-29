# radvd in a box

...that's it.

This is an alpine box, so it's fairly small.

# Running

Something along the lines of:

    docker run --rm \
        --net=host --cap-add=NET_RAW \
        -v /etc/radvd/%i.conf:/etc/radvd.conf:ro \
        docker.io/yanqiyu/radvd -d 2 -m stderr

# see also

`man 5 radvd.conf`
