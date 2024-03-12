FROM romaincarlier4/powerapi:arm64

USER powerapi
COPY --chown=powerapi . /tmp/smartwatts
RUN pip install --user --no-cache-dir "/tmp/smartwatts" && rm -r /tmp/smartwatts

ENTRYPOINT ["python3", "-m", "smartwatts"]
