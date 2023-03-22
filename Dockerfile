FROM jorisroovers/gitlint:0.19.1

COPY entrypoint.sh /gitlint/entrypoint.sh

ENTRYPOINT ["/bin/sh", "-c", "/gitlint/entrypoint.sh"]