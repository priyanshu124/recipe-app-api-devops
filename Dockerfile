FROM python:3.7-alpine
LABEL maintainer="London App Developer Ltd"

ENV PYTHONUNBUFFERED 1
<<<<<<< HEAD
=======
ENV PATH="/scripts:${PATH}"

RUN pip install --upgrade pip
>>>>>>> b8a3f8a878672c2afd74b294f4b19d1bcd5cbdb7

COPY ./requirements.txt /requirements.txt
RUN apk add --update --no-cache postgresql-client jpeg-dev
RUN apk add --update --no-cache --virtual .tmp-build-deps \
      gcc libc-dev linux-headers postgresql-dev musl-dev zlib zlib-dev
RUN pip install -r /requirements.txt
RUN apk del .tmp-build-deps

RUN mkdir /app
WORKDIR /app
COPY ./app /app
<<<<<<< HEAD
=======
COPY ./scripts/ /scripts/
RUN chmod +x /scripts/*
>>>>>>> b8a3f8a878672c2afd74b294f4b19d1bcd5cbdb7

RUN mkdir -p /vol/web/media
RUN mkdir -p /vol/web/static
RUN adduser -D user
RUN chown -R user:user /vol/
RUN chmod -R 755 /vol/web
USER user
