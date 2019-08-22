FROM qmkfm/base_container

VOLUME /qmk_firmware
VOLUME /artifacts
WORKDIR /qmk_firmware
COPY . .

CMD make redox:slave && cd /qmk_firmware && make redox:default && cp *.hex /artifacts
