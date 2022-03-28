Reveal.js as git submodule
---------------------------

Reveal.js is nice, but the default instruction is to dump their entire codebase into your repository. Not desirable.

This proposes an alternate approach, including reveal.js as a git submodule.

Create your project::

    mkdir slides
    git init
    git submodule add https://github.com/hakimel/reveal.js revealjs
    git submodule update --init --recursive

Copy the example and replace paths::

    cp revealjs/index.html .
    sed -i 's|dist/|revealjs/dist/|g' index.html
    sed -i 's|plugin/|revealjs/plugin/|g' index.html

Test it::

    firefox index.html

While reveal.js can run without a web server, some functionality (like including markdown files) actually requires a web server. It is also easier to use since it will auto reload on file changes.

Create a simple one with auto reload::
   
    npm install --no-save browser-sync
    npx browser-sync start -s -f . --no-notify --port 9000
