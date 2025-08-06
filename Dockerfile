# Python 3.10 slim 이미지 사용
FROM python:3.10-slim

# 작업 디렉토리 생성
WORKDIR /app

# 의존성 복사 및 설치
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 프로젝트 코드 복사
COPY . .

# 컨테이너 포트 설정
EXPOSE 8000

# Django 서버 실행 명령
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]