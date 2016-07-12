# TIL

My own TIL (*Today I learned*) mainly about Linux commands, tools and programming. 
TILs are concise write-ups about everything I find useful and want to remember about these topics. 

I borrowed the concept from https://github.com/jbranchaud/til 

My TILs are maintained in reStructuredText markup using [Sphinx](http://www.sphinx-doc.org/en/stable/rest.html) which require a build step to be transformed in HTML.

There is a Makefile in root directory and a target **html** to build the documentation:

```
make html
```

Then you can open the index file: build/html/index.html
