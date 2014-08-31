#!/bin/bash

hhvm --mode server -vServer.Type=fastcgi -vServer.Port=9000 & nginx

