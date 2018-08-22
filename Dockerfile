# Copyright 2013 Thatcher Peskens
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FROM python:2.7.9
MAINTAINER zhuyusen <hzzhuyusen@corp.netease.com>
ENV TZ "Asia/Shanghai"

# Local directory with project source
ENV DOCKER_SRC=mysite
# Directory in container for all project files
ENV DOCKER_HOME=/root
# Directory in container for project source files
ENV DOCKER_PROJECT=/root/project

# Install required packages and remove the apt packages cache when done.
# RUN apt-get install -y uwsgi-plugin-python
RUN mkdir -p $DOCKER_PROJECT
WORKDIR $DOCKER_PROJECT
COPY /var/log $DOCKER_PROJECT

#EXPOSE 8000
#RUN chmod u+x start_script.sh
#ENTRYPOINT ["./start_script.sh"]
