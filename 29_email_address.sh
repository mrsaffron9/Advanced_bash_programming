#!/bin/bash
#
gawk --re-interval '/^([a-zA-Z0-9_\.\+]+)@([a-zA-Z0-9_\.]+)\.([a-zA-Z]{2,5})$/{print}'
