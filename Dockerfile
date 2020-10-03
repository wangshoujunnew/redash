FROM redash/base:latest

# We first copy only the requirements file, to avoid rebuilding on every file
# change.
# docker 内部执行的命令
COPY requirements.txt requirements_dev.txt requirements_all_ds.txt ./
RUN pip install -i https://pypi.doubanio.com/simple -r requirements.txt -r requirements_dev.txt -r requirements_all_ds.txt

COPY . ./
# 使用淘宝的镜像地址
RUN npm config set registry http://registry.npm.taobao.org
RUN npm install && npm run build && rm -rf node_modules
# docker 的root用户密码
# RUN echo "root:root" | chpasswd
RUN chown -R redash /app
USER redash

ENTRYPOINT ["/app/bin/docker-entrypoint"]
