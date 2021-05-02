<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />
<!-- markdownlint-disable MD003 MD033 MD034 -->

Create CWA svg image
=======

This Dockerfile allows to easily create svg images for the corona warn
app

Usage: 
docker build -t cwa_svg .
docker run --rm -v /tmp:/tmp cwa_svg ./cwa_svg --description "DESY Library" --address "Geb. 1d * Notkestrasse 85 * D-22607 Hamburg" --type=6

where the arguments 
--description
--address
--type

are the parameters from the cwa-event-qr-code application:

https://github.com/corona-warn-app/cwa-event-qr-code

The result is cwa.svg and cwa.pdf located at /tmp
<!-- vim: spell spelllang=en_gb bomb

-->

