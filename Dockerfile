FROM jorisroovers/gitlint:0.19.1

COPY entrypoint.sh .

ENTRYPOINT ["/bin/sh", "-c", "entrypoint.sh"]