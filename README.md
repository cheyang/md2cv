# md2cv Docker Container
Markdown to curriculum vitae(html or pdf)

This docker image lets you run MarkdownResumeTo html or pdf in a docker container.

## Building the image

```sh
docker build .
```

## Using the image to generate pdf

```sh
docker run -v <host_dir>:<container_dir> cheyang/markdown_resume_cn --pdf <container_dir>/<your_resume_markdown_file>
```

## Using the image to generate html

```sh
docker run -v <host_dir>:<container_dir> cheyang/markdown_resume_cn  <container_dir>/<your_resume_markdown_file>
```

The mounted volume can be used to send local markdown file and to save  
the output.pdf(html).



