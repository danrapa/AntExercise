# Welcome to DevOps

A simple container that runs a default index.html. 
The script run_httpd.sh will accept a parameter and modifies the html
file to display the name parameter given to the script.

## Usage

1. Clone repository to local directory.
2. run ./run_httpd.sh [name] 
3. browse to localhost:1234

## Note

   The docker run command uses localhost on port 1234. This means that
   there can be only one container. If we want multiple instances, there should
   be or provide another parameter <port>, or use a random port in the valid range (1024-65535).
   These solutions are also not bullet-proof as the port can be taken temporarily, a best practice
   will be to try running the container, reading the output of the command and if there was a port   taken error, try to run again with different random port. 
