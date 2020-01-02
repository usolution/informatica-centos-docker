FROM centos:latest

WORKDIR "/root"
#RUN yum -y install wget nc
#RUN wget https://app2.informaticacloud.com/saas/download/linux64/installer/agent64_install.bin
COPY agent64_install_ng_ext.bin /root/agent64_install_ng_ext.bin
RUN chmod +x /root/agent64_install_ng_ext.bin
RUN echo -e "\n\n\n\n" | /root/agent64_install_ng_ext.bin || echo OK
WORKDIR "/root/infaagent"
COPY setup.sh /root/infaagent/setup.sh
COPY client.sh /root/infaagent/client.sh
COPY docker_agent_start.sh /root/infaagent/docker_agent_start.sh
RUN chmod +x setup.sh
RUN chmod +x client.sh
RUN chmod +x docker_agent_start.sh
ENTRYPOINT [ "/root/infaagent/docker_agent_start.sh" ]
