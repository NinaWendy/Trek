# Use elixir as base image
FROM elixir:1.15-otp-25

# Copy the current directory contents into the container at /app
COPY . /app

# Set the working directory to /app
WORKDIR /app

# database url
# ENV DATABASE_URL=postgresql://postgres:password@192.168.100.145:5432/todo
ENV DATABASE_URL=postgresql://postgres:password@192.168.100.145:5432/todo4


# Install and setup dependencies, and seed data
# RUN mix setup
RUN mix set

# Make port 4000 available to the world outside this container
EXPOSE 4000

# Run the app when the container launches
CMD ["mix", "phx.server"]
