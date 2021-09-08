FROM moekiwisama/envready:latest

# apt install basic apps
ARG DEBIAN_FRONTEND=noninteractive

# get Jetbrain IntelliJ IDEA 2021.2.1
RUN mkdir -p /idea
RUN wget https://download-cdn.jetbrains.com/idea/ideaIC-2021.2.1.tar.gz && tar -zxvf ideaIC-2021.2.1.tar.gz -C /idea && rm -f ideaIC-2021.2.1.tar.gz
RUN mv /idea/* /idea/app
RUN ln -s /idea/app/bin/idea.sh /bin/idea

ADD ./scripts/start.sh /idea/


ENTRYPOINT ["sh", "/idea/start.sh"]
