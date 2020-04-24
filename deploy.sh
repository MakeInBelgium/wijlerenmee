BUCKET="wijlerenmee"
DAY_30="2592000"

aws --profile f7-wrm \
  s3 sync \
  dist/nl s3://$BUCKET \
    --acl public-read \
    --cache-control max-age=$DAY_30 \
    --delete \
    --exclude '*.html*' \
    --include '*'

aws --profile f7-wrm \
  s3 sync \
  dist/nl s3://$BUCKET \
    --acl public-read \
    --cache-control max-age=0 \
    --exclude '*' \
    --include '*.html'
