FROM jorisroovers/gitlint:0.19.1

COPY entrypoint.sh .

ENTRYPOINT ["entrypoint.sh"]