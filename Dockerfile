FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
# ex-e2e: failing-build scenario (TestE2EFailingBuildPostsFailureCheck); the harness removes this block.
RUN echo "error: ex-e2e failing build ex-e2e-2026-11-02T10-29-50-119388159Z" >&2 && exit 3
