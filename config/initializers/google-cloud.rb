require "google/cloud/storage"
require "json"

credentials = JSON.parse(ENV["GCS_KEY"])
bucket_name = ENV["GCS_NAME"]
project_id = ENV["GCS_ID"]

GOOGLE_STORAGE = Google::Cloud::Storage.new(
  project_id: project_id,
  credentials: credentials
)

GCS_BUCKET = GOOGLE_STORAGE.bucket(bucket_name)