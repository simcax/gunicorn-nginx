# gunicorn-nginx
## Creation of an ARM64 and AMD64 Docker image for Gunicorn based on Alpine

========
Trying to make as simple an image, which shows how to run a "hello world" Flask app with Gunicorn. Mostly for my own benefit, as I was struggling with the concept. 
It came about as I tried out an image made by tiangalo on Docker Hub with uSWGI, Flask and NGiNX, but sadly didn't work with ARM. 
As I run a Raspberry PI 4 cluster, I needed support on both my laptop and on the Raspberries. This seems to do the trick :-)
