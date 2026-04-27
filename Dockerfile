# Use OpenJDK base image
FROM openjdk:17

# Set working directory inside container
WORKDIR /app

# Copy source code
COPY HelloWorld.java .

# Compile the Java program
RUN javac HelloWorld.java

# Run the program when container starts
CMD ["java", "HelloWorld"]


