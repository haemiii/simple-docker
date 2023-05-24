# 1. FROM baseImage : 어떤 베이스 이미지를 쓸 건지 명시
# 16 = node version
# alpine = 최소단위의 리눅스

FROM node:16-alpine


# 2. 이미지 파일 안에서 어떤 디렉토리에 애플리케이션을 복사할지
WORKDIR /app

#3. 프로젝트 파일 복사
COPY package.json pack-lock.json ./

RUN npm ci

#제일 빈번히 작성되는것을 마지막에 작성
COPY index.js . 

ENTRYPOINT [ "node", "index.js" ]