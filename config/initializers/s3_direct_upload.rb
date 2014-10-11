S3DirectUpload.config do |c|
  c.access_key_id = "AKIAISTV6VADBDVA67QA"       # your access key id
  c.secret_access_key = "rYdv0tAhOcDz/KeKJ1tOFMJxyBvNpdi3zf7tfifV"   # your secret access key
  c.bucket = "a2-sermon-podcast"              # your bucket name
  c.region = "us-west-2"             # region prefix of your bucket url. This is _required_ for the non-default AWS region, eg. "s3-eu-west-1"
  c.url = "https://#{c.bucket}.s3.amazonaws.com/"             # S3 API endpoint (optional), eg. "https://#{c.bucket}.s3.amazonaws.com/"
end