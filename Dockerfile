FROM node:16-alpine as builder 
MAINTAINER Martin Köhler <Martin.Koehler@desy.de>
# Build pdf2svg
RUN apk add --update-cache make gcc libc-dev cairo-dev poppler-dev git
RUN git clone https://github.com/dawbarton/pdf2svg pdf2svg
WORKDIR /pdf2svg
RUN ./configure && make
# Result is /pdf2svg/pdf2svg

# Final image
FROM node:16-alpine
# Need cairo and poppler and liberation font
RUN apk add --update-cache cairo glib poppler-glib ttf-liberation
COPY --from=builder /pdf2svg/pdf2svg /usr/local/bin/pdf2svg
RUN npm install cwa-event-qr-code --global

COPY cwa_svg .

CMD ["./cwa_svg"]
