#!/bin/bash

find . -name "*[a-z].rst" ! -name "index.rst" | wc -l
