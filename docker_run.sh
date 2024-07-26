docker run -it \
             --rm \
             -p 9009:80 \
             --cpuset-cpus="0-55" \
             --cpuset-mems="0"  \
             --mount type=bind,source=./data/,target=/data \
             --mount type=bind,source=/home/sdp/models/,target=/model data \
             -e HTTP_PROXY=${http_proxy} \
             -e HTTPS_PROXY=${https_proxy} \
             -e NO_PROXY=${no_proxy} \
             vllm-cpu-env
             #vllm:cpu
