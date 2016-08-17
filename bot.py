#!/usr/bin/env python
# -*- coding: utf-8 -*- 

import slackweb
import os

url = os.getenv("SLACKBOT_URL")

def main():
    if not url:
        print "Warn: SLACKBOT_URL is not set."
        return
    slack = slackweb.Slack(url=url)
    slack.notify(text="from RaspberryPi.")

if __name__ == '__main__':
    main()

