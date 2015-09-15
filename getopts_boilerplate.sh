#!/bin/bash

###### Opts handling
usage() {
    echo "USAGE: $0 --promo_tag [PROMO TAG] --backtrack_days [No. of Days to Backtrack] --output_dir [Full path]" 1>&2
    exit 1
}

OPTS=`getopt -o a -l promo_tag:,backtrack_days: -- "$@"`
eval set -- "$OPTS"
PROMO_TAG=
BACKTRACK=
OUTPUT_DIR=
while true ; do
    case "$1" in
        --promo_tag) PROMO_TAG=$2; shift 2;;
        --backtrack_days) BACKTRACK=$2; shift 2;;
        --output_dir) OUTPUT_DIR=$2; shift 2;;
        --) shift; break;;
    esac
done

if [[ -z $PROMO_TAG ]] || [[ -z $BACKTRACK ]] || [[ -z $OUTPUT_DIR ]]
then
     usage
fi

