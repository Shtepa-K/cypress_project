FROM cypress/included:10.11.0

RUN apt-get update && apt-get install -y firefox-esr

ENV CYPRESS_BROWSER=firefox

WORKDIR /e2e
COPY . .

ENTRYPOINT ["npx", "cypress", "run", "--browser", "firefox", "--headless"]