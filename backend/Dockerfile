FROM node:20
EXPOSE 8080
ENV DB_HOST=mysql
RUN useradd expense
RUN mkdir /opt/server
RUN chown expense:expense -R opt/server
WORKDIR /opt/server
COPY *.js .
COPY *.json .
RUN npm install
CMD ["node","index.js"]


# Quick examples for other apps
# App Type	Manual Command	Docker CMD
# Node.js	node index.js	CMD ["node","index.js"]
# Python	python app.py	CMD ["python","app.py"]
# Java	java -jar app.jar	CMD ["java","-jar","app.jar"]
# Nginx	nginx -g "daemon off;"	CMD ["nginx","-g","daemon off;"]

#This below commands are to install debian mysql client to check db connected to backend or not
# ( apt update )

# ( apt install -y default-mysql-client )