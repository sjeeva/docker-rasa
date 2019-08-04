FROM python
ENV RASA_VERSION 1.2.0

WORKDIR /rasa-${RASA_VERSION}
RUN curl -SL https://github.com/RasaHQ/rasa/archive/${RASA_VERSION}.tar.gz | tar -xzC / && \
    pip install -r requirements.txt && pip install -e .
