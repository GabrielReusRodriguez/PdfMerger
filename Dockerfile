FROM python:3

ARG UserName=gabriel
ARG UID=1000
ARG GID=1000


#VOLUME ["/usr/src/pdfMerger"]
WORKDIR /usr/src/pdfUtils

RUN groupadd -g ${GID} ${UserName}
RUN useradd -m -u ${UID} -g ${GID}  -s /bin/bash ${UserName}
USER ${UserName}

EXPOSE 2202/tcp

#Instalamos las librerias necesarias con pip.
COPY --chown=gabriel:gabriel requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt


#Copio el codigo de la aplicación o hago un git clone...
COPY --chown=gabriel:gabriel ./src/*.py ./

#RUN python3 --version

#RUN python3  ./pdfMergerServer.py

CMD ["python3" ,"/usr/src/pdfUtils/pdfUtilsServer.py"]