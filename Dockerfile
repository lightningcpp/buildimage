FROM        ubuntu:xenial
CMD         bash

# Required system packages
RUN apt-get update && apt-get -y install git cmake ninja-build graphviz mscgen doxygen astyle cppcheck \
        valgrind clang make 

ADD container_init.sh /container_init.sh
RUN chmod +x /*.sh

CMD ["/run.sh"]
