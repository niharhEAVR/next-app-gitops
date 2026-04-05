# Use Bun image
FROM oven/bun:1

WORKDIR /app

# Install deps
COPY package.json bun.lock* ./
RUN bun install

# Copy app
COPY . .

# Build app
RUN bun run build

EXPOSE 3000

CMD ["bun", "run", "start"]