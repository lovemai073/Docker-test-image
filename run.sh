#!/bin/bash
echo "Docker container has been started"
timestamp=`date +%Y/%m/%d-%H:%M:%S`
identitycode="container01"
echo "Identity Code is $identitycode" 2>&1
echo "System path is $PATH at $timestamp" 2>&1