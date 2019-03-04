#!/usr/bin/env sh

if [ -z "$CLOUDFLARE_ACCOUNT_ID" ]; then
    echo 'ERROR: $CLOUDFLARE_ACCOUNT_ID is not set.' >&2; exit 1
fi

if [ -z "$CLOUDFLARE_EMAIL" ]; then
    echo 'ERROR: $CLOUDFLARE_EMAIL is not set.' >&2; exit 1
fi

if [ -z "$CLOUDFLARE_TOKEN" ]; then
    echo 'ERROR: $CLOUDFLARE_TOKEN is not set.' >&2; exit 1
fi

exec cf-terraforming --account $CLOUDFLARE_ACCOUNT_ID --email $CLOUDFLARE_EMAIL --key $CLOUDFLARE_TOKEN "$@"
