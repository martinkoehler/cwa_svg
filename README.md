<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />
<!-- markdownlint-disable MD003 MD033 MD034 -->

Create CWA svg image
=======

This Dockerfile allows to easily create svg images for the corona warn
app

Usage: 
```
# Check out this repo and cd into the dir
# To build the container issue
docker build -t cwa_svg .
# To create the image
docker run --rm -v /tmp:/tmp cwa_svg ./cwa_svg --description "My Event" --address "ABC Street 12 * 12345 Town" --type=6
```

where the arguments 
```
--description
--address
--type
```

are the parameters from the [cwa-event-qr-code](https://github.com/corona-warn-app/cwa-event-qr-code) application:



The result is cwa.svg and cwa.pdf, which will be located at /tmp
<!-- vim: spell spelllang=en_gb bomb

-->

