$ for i in {0..3}; do
    gcloud compute instances create node${i} \
    --image-project coreos-cloud \
    --image coreos-alpha-723-0-0-v20150625 \
    --boot-disk-size 200GB \
    --machine-type n1-standard-1 \
    --can-ip-forward \
    --scopes compute-rw
done