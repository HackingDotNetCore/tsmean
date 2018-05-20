# Run this from root of project (tsmean)
FROM tsmean/clientbase

COPY . /code

# Setup Shared
WORKDIR /code/shared
RUN npm install

# Setup Frontend
WORKDIR /code/frontend
RUN npm install
ENV NODE_ENV production
RUN npm run build:prod
