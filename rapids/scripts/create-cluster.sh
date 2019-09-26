NAME=randy

DATAPROC_BUCKET=rapidsai-test-1

gcloud beta dataproc clusters create $NAME \
--zone us-east1-c \
--master-accelerator type=nvidia-tesla-t4,count=4 \
--master-machine-type n1-standard-32 \
--worker-accelerator type=nvidia-tesla-t4,count=4 \
--worker-machine-type n1-standard-32 \
--optional-components=ANACONDA,JUPYTER \
--enable-component-gateway \
--initialization-action-timeout 20m \
--initialization-actions gs://$DATAPROC_BUCKET/rapids/rapids.sh \
--metadata "JUPYTER_PORT=8888,INIT_ACTIONS_REPO=gs://rapidsai-test-1"
