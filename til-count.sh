#!/bin/bash

find . -name "*[a-z0-9].rst" ! -name "index.rst" | wc -l
