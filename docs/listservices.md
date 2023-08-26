To get a list of services we can enable, run the below

```bash
gcloud services list --available
```

Then copy the API string, so to enable `Youtube` from the below excerpt

```
NAME                                      TITLE
youtube.googleapis.com                YouTube Data API v3
youtubeanalytics.googleapis.com       YouTube Analytics API
youtubeoembed.googleapis.com          YouTube oEmbed API
youtubereporting.googleapis.com       YouTube Reporting API
```

we would pick `youtube.googleapis.com`