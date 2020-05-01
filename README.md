# Geoffrey's TIL

My own TIL (*Today I learned*) mainly about Linux commands, tools and programming.
TILs are concise write-ups about everything I find useful and want to remember about these topics.

Web version is hosted directly here: https://papaux.github.io/til

I borrowed the concept from https://github.com/jbranchaud/til

My TILs are maintained in reStructuredText markup using [Sphinx](http://www.sphinx-doc.org/en/stable/rest.html) which require a build step to be transformed in HTML.

There is a Makefile in root directory and a target **html** to build the documentation:

```
make html
```

Then you can open the index file: build/html/index.html

## Github Pages

To publish on github pages, I opted for the `gh-pages` branch option.

### Auto update using github Action

This repository is configured with a github Action to automatically build and publish the TILs to the `gh-pages` branch after each push on master.

The only requirement is to create and configure a github access token and add it to the secrets of this repository, named `ACCESS_TOKEN`.

### Manual

First check out the repository and the `gh-pages` branch in another directory, for example `../til-gh-pages`. Clean the branch from its history (check my TILs for a howto) and run the following command:

```
make BUILDDIR=../til-gh-pages html
```

Commit the changes and voilà! If the site doesn't happear, wait 10 minutes and check again later.
