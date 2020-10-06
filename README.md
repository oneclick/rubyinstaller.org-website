# rubyinstaller.org - website
This repository holds the source code and the content for the Jekyll based https://rubyinstaller.org website.
The static website is built and published automatically on GitHub after each push to the master branch of the repository.

## Getting Started
We love contributions to our website.
To make sure the changes look as expected, you can view the site locally:

* Install Ruby 2.0 or newer
* Clone the repository and install required gems:
```sh
git clone https://github.com/oneclick/rubyinstaller.org-website
cd rubyinstaller.org-website
gem install bundler
bundle install
```

Now you can run the Jekyll generator and its embedded web server:
```sh
jekyll serve --drafts --incremental
```

Point your browser to http://localhost:4000 to view the result.
It shows the draft posts from the `_drafts` directory in addition to posts in `_posts`.
