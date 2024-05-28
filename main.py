#!/usr/bin/env python

import tools
import logger
import streamClasses
import sys


'''for i in range(20):
  url = baseurl + str(i)
  print(wget.download(url, ('VODstemp.m3u')))
  apollolist = streamClasses.rawStreamList('VODstemp.m3u')'''

apollomovies = streamClasses.rawStreamList('VODstemp.m3u')

