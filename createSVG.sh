#!/bin/bash
GRAPHVIZ_FILE=$1
DOT_FILE=/usr/bin/dot

if [[ ! -f $GRAPHVIZ_FILE ]] ; then 
    echo "usage: $0 <graphViz-file>"
    exit 1
fi

if [[ ! -x $DOT_FILE ]] ; then 
    echo "dot file not found ... have you installed graphViz tools???"
    exit 1
fi

$DOT_FILE $GRAPHVIZ_FILE -Tsvg > $GRAPHVIZ_FILE.svg
