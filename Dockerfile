FROM fossbilling/fossbilling:latest

# Set the SHELL to bash with pipefail option
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
ARG NODE_VERSION=20

# install curl
RUN apt update && apt install curl -y

# install nvm
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash

# set env
ENV NVM_DIR=/root/.nvm

# install node
RUN bash -c "source $NVM_DIR/nvm.sh && nvm install $NODE_VERSION"

# set ENTRYPOINT for reloading nvm-environment
ENTRYPOINT ["bash", "-c", "source $NVM_DIR/nvm.sh && exec \"$@\"", "--"]

# set cmd to bash
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN echo 'export PATH=/usr/local/bin:$PATH' >> /root/.bashrc
RUN echo 'export PATH=/usr/local/bin:$PATH' >> /root/.bash_profile
RUN echo 'export PATH=/usr/local/bin:$PATH' >> /root/.profile
RUN echo 'export PATH=/usr/local/bin:$PATH' >> /etc/environment

# Add Composer to the PATH
ENV PATH="$PATH:/usr/local/bin"

COPY scripts/start.sh /start.sh
CMD [ "/start.sh" ]
#CMD ["/bin/bash"]
