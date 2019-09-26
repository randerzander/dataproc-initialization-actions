DATAPROC_BUCKET=rapidsai-test-1

# run from https://github.com/randerzander/dataproc-initialization-actions/tree/master/rapids
gsutil cp -r internal gs://$DATAPROC_BUCKET/rapids/
gsutil cp rapids.sh gs://$DATAPROC_BUCKET/rapids/rapids.sh
