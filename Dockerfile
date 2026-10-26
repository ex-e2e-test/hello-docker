FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
# ex-e2e: failing-build scenario (TestE2EFailingBuildPostsFailureCheck); the harness removes this block.
RUN echo "error: ex-e2e failing build ex-e2e-2026-10-26T09-21-47-503659155Z" >&2 && exit 3
