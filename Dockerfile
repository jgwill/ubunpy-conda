FROM jgwill/ubunpy


# Anacronda prereq
USER root
RUN apt-get install -y libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6
USER ubuntu
RUN curl -O https://repo.anaconda.com/archive/Anaconda3-2020.07-Linux-x86_64.sh 
RUN bash Anaconda3-2020.07-Linux-x86_64.sh -b
RUN rm Anaconda3-2020.07-Linux-x86_64.sh

# Set path to conda
#ENV PATH /root/anaconda3/bin:$PATH
ENV PATH /home/ubuntu/anaconda3/bin:$PATH


# Updating Anaconda packages
RUN conda update -y conda
#RUN conda update -y anaconda
#RUN conda update -y --all
#@STCGoal : Anaconda should be installed and functional


USER root
RUN conda config --set auto_activate_base false