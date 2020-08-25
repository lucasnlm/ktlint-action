FROM alpine:3.11

RUN apk --no-cache --update add git curl wget openjdk11 \
    && rm -rf /var/cache/apk/*

RUN curl -sSL https://api.github.com/repos/pinterest/ktlint/releases/latest \
    | grep "browser_download_url.*ktlint\"" \
    | cut -d : -f 2,3 \
    | tr -d \" \
    | wget -qi -\
    && chmod a+x ktlint \
    && mv ktlint /usr/local/bin/

ENTRYPOINT ["/run-script.sh"]
