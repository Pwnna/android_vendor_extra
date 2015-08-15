#!/usr/bin/env python
from __future__ import print_function

import re
import urllib2


WHITESPACES = re.compile(r"\s+")


def log(msg):
  print("[adblocking] {}".format(msg))


def get_hosts_from_source(source_url):
  resp = urllib2.urlopen(source_url)
  hosts = set()
  for line in resp:
    line = line.strip()
    if line.startswith("#") or len(line) == 0:
      continue

    line = line.split("#", 1)[0].strip()

    line = WHITESPACES.split(line)
    if len(line) != 2:
      log("line '{}' does not comform to standards! skipping".format(line))

    if line[1] == "localhost":
      continue

    hosts.add(line[1])

  return hosts


def main():
  sources = []
  hosts = set()
  with open("sources.txt") as f:
    for line in f:
      source_url = line.strip()
      if source_url.startswith("#"):
        continue

      sources.append(source_url)
      log("getting hosts from {}".format(source_url))
      hosts = hosts.union(get_hosts_from_source(source_url))

  log("writting new host file")
  with open("hosts", "w") as f:
    f.write("# generated from\n")
    for source_url in sources:
      f.write("# {}\n".format(source_url))

    f.write("127.0.0.1\tlocalhost\n")
    f.write("::1\tlocalhost\n")
    f.write("\n\n")
    for host in hosts:
      f.write("0.0.0.0\t{}\n".format(host))


if __name__ == "__main__":
  main()

