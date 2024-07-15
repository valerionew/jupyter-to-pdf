# Use an official Ubuntu base image
FROM ubuntu:latest

# Set environment variables to non-interactive (this prevents some prompts)
ENV DEBIAN_FRONTEND noninteractive

# Update Ubuntu Software repository
RUN apt-get update && apt-get upgrade -y

# Install Python 3 and Jupyter 
RUN apt-get install -y python3 python3-nbconvert jupyter-notebook jupyter python3-matplotlib python3-pandas python3-numpy python3-scipy 

# Install Pandoc
RUN apt-get install -y pandoc

# Install TeX Live
RUN apt-get install -y texlive-xetex texlive-fonts-recommended texlive-plain-generic texlive-latex-recommended texlive-latex-extra

# Set the working directory
WORKDIR /data

# Default command
CMD ["jupyter", "nbconvert", "--to", "pdf"]