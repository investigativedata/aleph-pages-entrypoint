#!/usr/bin/env bash

set -e

curl -L -o /tmp/aleph-pages.zip "$ALEPH_PAGES_ZIP"
unzip -o /tmp/aleph-pages.zip -d /tmp/aleph-pages/
rm -rf /aleph/aleph/pages/*
mv /tmp/aleph-pages/**/*.md /aleph/aleph/pages/

exec $@

