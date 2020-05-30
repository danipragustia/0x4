# 0x4

**WARNING: This project is archived and no longer update**

> Lightweight Jekyll theme for personal blog

 - Simple and minimal design
 - Full Responsive
 - Built with Bootstrap 4 and jQuery
 - Optional with Github Profile

## How to Setup

### Basic Setup for a new Jekyll site
1. [Install Bundler](http://bundler.io) `gem install bundler` and then install [Jekyll](http://jekyllrb.com) and all dependencies `bundle install`.
2. Fork the [0x4 repo](https://github.com/danipragustia/website/fork).
3. Clone the repo you just forked and rename it.
4. Edit `_config.yml` to personalize your site.
5. Check out the sample posts in `_posts` to see examples for pulling in large feature images, assigning categories and tags, and other YAML data.

### Setup for an Existing Jekyll site
1.  Clone the following folders: `_includes`, `_layouts`, `_sass`, and `assets`.
2.  Clone the following folders/files and personalize content as need: `about/`, `posts/` and `index.html`.
3.  Edit `_config.yml` to personalize your site.

## Customize

### Layouts

The following files are part of the `_layouts` directory.

  - `default.html`, `page.html`, `post.html` &mdash; standard layout files exactly as in Minima.
  - `home.html` &mdash; a home page layout, which supports Jekyll's [pagination](https://jekyllrb.com/docs/pagination/). This can be enabled by setting `paginate` in `_config.yml`.
  - `articles.html` &mdash; this is a layout which displays a full list of posts by year.

### Includes

The following files are part of the `_includes` directory.
  - `head-includes.html` &mdash; an empty text file where the user may add additional lines that will be inserted into `<head>`. If you want to customize Minima Reboot and need to include additional style sheets, add them here.

### Sass

The following files are part of the `_sass` directory.

  - `styles.scss` &mdash; loads the required style sheets.
  - `_components.scss` and `_layout.scss`  &mdash; contains a few layout tweaks on top of Bootstrap's style.

### Assets

Contains the `main.scss` file which loads the style files by importing `styles.scss`.

## CDN By
![Statically](https://statically.io/static/images/statically_wide.svg)
