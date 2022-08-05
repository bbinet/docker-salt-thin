FROM debian:bullseye

MAINTAINER Bruno Binet <bruno.binet@helioslite.com>

RUN apt update && apt install -yq --no-install-recommends \
    python3-pip build-essential python3-dev\
    && pip3 install salt==3003.3 influxdb docker-py jsonnet https://github.com/salt-formulas/reclass/archive/v1.7.0.zip \
    && rm -rf /var/lib/apt/lists/*

CMD ["python3", "-c", "import sys;sys.path.insert(0, '.');import salt.utils.thin;print(salt.utils.thin.gen_thin('/tmp', extra_mods='dateutil,influxdb,docker,backports,certifi,docker,dockerpycreds,idna,requests,urllib3,websocket,reclass,pyparsing,six,pytz', so_mods='_jsonnet', overwrite=True, absonly=False))"]
