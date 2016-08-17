#!/usr/bin/env python
# -*- coding: utf-8 -*- 

import slackweb
import os

if __name__ == '__main__':
    slack = slackweb.Slack(url=os.getenv("SLACKBOT_URL"))
    slack.notify(text="from RaspberryPi.")

