# md2cv Docker Container
Markdown to curriculum vitae

This docker image lets you run MarkdownResumeToPdf in a docker container.

## Building the image

```sh
docker build .
```

## Using the image

```sh
docker run -v <host_dir>:<container_dir> openlabs/docker-wkhtmltopdf <container_dir>/<your_resume_markdown_file>
```

The mounted volume can be used to send local markdown file and to save  
the output.pdf.



