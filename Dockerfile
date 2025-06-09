FROM cypress/included:12.17.4

RUN apt-get update && apt-get install -y firefox-esr

ENV CYPRESS_BROWSER=firefox

WORKDIR /e2e
COPY ./cypress_project /e2e

ENTRYPOINT ["npx", "cypress", "run", "--browser", "firefox", "--headless"]