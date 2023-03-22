FROM jorisroovers/gitlint:0.19.1

RUN apk add --no-cache bash

COPY entrypoint.sh /gitlint/entrypoint.sh

ENTRYPOINT ["/gitlint/entrypoint.sh"]