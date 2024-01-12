
FROM python:3.11



RUN git clone  https://github.com/SampleEnvironment/frappy.git

WORKDIR /frappy

ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Install dependencies:

RUN pip install -r requirements.txt


CMD ["python3", "bin/frappy-server","-c","cfg/cryo_cfg.py", "cryo"]
