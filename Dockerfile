FROM fusuf/whatsasena:latest

RUN git clone https://github.com/botbysandun/SandunBOT /root/SandunBOT
WORKDIR /root/SandunBOT/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
