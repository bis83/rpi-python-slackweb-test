FROM hypriot/rpi-python
MAINTAINER <https://github.com/bis83>

RUN pip install slackweb

RUN git clone --depth 1 https://github.com/bis83/rpi-python-slackweb-test.git

WORKDIR rpi-python-slackweb-test
CMD ["bash", "python", "bot.py"]
