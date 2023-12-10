# Use an official Ruby runtime as a parent image
FROM ruby:3.1.2

# Set the working directory in the container to /app
WORKDIR /app

# Copy the Gemfile and Gemfile.lock into the container at /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

# Install any needed packages specified in Gemfile
RUN bundle install

# Copy the current directory contents into the container at /app
COPY . /app

# Set the environment to development
ENV RAILS_ENV=development

# Expose port 3000 to the outside world
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]
