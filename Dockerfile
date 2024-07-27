# ʹ�� node:slim ��Ϊ��������
FROM node:slim

# ���ù���Ŀ¼
WORKDIR /app

# ����ǰĿ¼�µ������ļ����Ƶ�����Ŀ¼
COPY . .

EXPOSE 34482

# ����ϵͳ����װ curl��gawk �� sed ���ߣ�Ϊ sgyyuwd.js �ļ����ִ��Ȩ�ޣ�Ȼ��װӦ�õ�������
RUN apt-get update && \
    apt-get install -y curl gawk sed && \
    chmod +x sgyyuwd.js && \
    npm install

# ������������ʱִ�е�����Ϊ node sgyyuwd.js
CMD ["node", "sgyyuwd.js"]
