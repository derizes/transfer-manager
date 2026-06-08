# --- Stage 1: Development dependencies and compilation ---
FROM node:20-alpine AS builder
LABEL authors="Diego Erizes Villalobos"
WORKDIR /app
COPY package*.json ./
RUN npm ci

# --- Stage 2: Final production image ---
FROM node:20-alpine AS runner
WORKDIR /app
ENV NODE_ENV=production

# Copy only necessaty files
COPY package*.json ./
# Install only production dependencies (omit dev dependencies)
RUN npm ci --only=production
COPY . .

EXPOSE 5000

# For safety reasons, do not run as root
USER node

CMD ["node", "server.js"]