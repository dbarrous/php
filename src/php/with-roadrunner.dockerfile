# syntax = devthefuture/dockerfile-x
################################################################################
# The setups in this file belong to the project https://code.shin.company/php
# I appreciate you respecting my intellectual efforts in creating them.
# If you intend to copy or use ideas from this project, please credit properly.
# Author:  SHIN Company <shin@shin.company>
# License: https://code.shin.company/php/blob/main/LICENSE
################################################################################

ARG  BUILD_FROM_IMAGE=${BUILD_FROM_IMAGE:-php}
ARG  PHP_VERSION=${PHP_VERSION:-8.3}
ARG  PHP_VARIANT=${PHP_VARIANT:-zts}

FROM ./base-php AS php

################################################################################

INCLUDE ./with-roadrunner/roadrunner-install
INCLUDE ./with-roadrunner/roadrunner-config

RUN /usr/local/bin/rr -v

################################################################################

EXPOSE 80
EXPOSE 443
EXPOSE 443/udp
EXPOSE 6001

CMD []

################################################################################

LABEL traefik.enable=true
