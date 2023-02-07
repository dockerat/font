FROM storezhang/ubuntu:23.04


LABEL author="storezhang<华寅>"
LABEL email="storezhang@gmail.com"
LABEL qq="160290688"
LABEL wechat="storezhang"
LABEL description="常用字体"


ENV FONT_HOME=/opt/system/font
# Jetbrains Mono字体版本
ENV NERD_FONTS_VERSION 2.1.0
ENV JETBRAINS_BIN_FILE jetbrans.zip


RUN set -ex \
    \
    \
    \
    && apt update -y \
    && apt apt install axel unzip -y \
    \
    \
    \
    && mkdir -p ${FONT_HOME} \
    && axel --insecure --num-connections=8 https://gh.wget.cool/https://github.com/ryanoasis/nerd-fonts/releases/download/v${NERD_FONTS_VERSION}/JetBrainsMono.zip --output ${JETBRAINS_BIN_FILE} \
    && unzip ${JETBRAINS_BIN_FILE} -d ${FONT_HOME} \
    \
    \
    \
    # 清理镜像，减少无用包 \
    && apt autoremove axel unzip -y \
    && rm -rf /var/lib/apt/lists/* \
    && apt autoclean
