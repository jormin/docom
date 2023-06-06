FROM nginx:latest

RUN rm -rf /bin/sh && ln -s /bin/bash /bin/sh

RUN apt-get update && apt-get install vim -y && dpkg-reconfigure dash

CMD ["nginx", "-g", "daemon off;"]