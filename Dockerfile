FROM hypriot/rpi-python
MAINTAINER <https://github.com/bis83>

RUN pip install slackweb

RUN apt-get update && apt-get install -y \
    curl \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

RUN curl -k https://raw.githubusercontent.com/bis83/rpi-python-slackweb-test/master/bot.py > bot.py
CMD ["bash", "python", "bot.py"]

