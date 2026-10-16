FROM nginx:alpine
RUN echo "E2E-INTENTIONAL-FAILURE: this step exits 1" && exit 1
COPY index.html /usr/share/nginx/html/index.html
