FROM swift:4.2
WORKDIR /app
COPY . ./

RUN swift build -c release
RUN cp -f .build/release/CommandLineHop /usr/local/bin/snowlang
ENTRYPOINT ["snowlang"]
