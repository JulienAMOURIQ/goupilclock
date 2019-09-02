#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import daemon


def main():
    print("tst")
    #https://www.python.org/dev/peps/pep-3143/

with daemon.DaemonContext():
    main()