#!/usr/bin/env python

import os
import argparse
import logging
import sys

def main(args, loglevel):
  logging.basicConfig(format="%(levelname)s: %(message)s", level=loglevel)
  f = args.file_input
  
  if not os.path.exists(f):
    logging.error("File %s does not exist" % f)
    sys.exit(1)

  logging.info("Processing: %s" % f)

 
if __name__ == '__main__':
  parser = argparse.ArgumentParser(description = "A very useful script.",
                                   epilog = "Detailed description of the script. Params can also be specified in a file  that is passed as command line argument, like this: '%(prog)s @params.conf'.",
                                   fromfile_prefix_chars = '@')

  parser.add_argument("file_input", help = "pass ARG to the program", metavar = "file")
  parser.add_argument("-v", "--verbose", help="increase output verbosity", action="store_true")
  args = parser.parse_args()
  
  if args.verbose:
    loglevel = logging.DEBUG
  else:
    loglevel = logging.INFO
  
  main(args, loglevel)
