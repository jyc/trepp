# Reading

- [BuckleScript API](https://bucklescript.github.io/bucklescript/api/index.html)
- https://github.com/glennsl/bucklescript-cookbook
- https://inc-lc.github.io/

# Setup

Recommended: follow https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md to
set up npm.

Install [pax](https://pax.js.org/), the simple bundler we're using right now.

    cargo install pax

Install [entr](http://eradman.com/entrproject/) as a file watcher for development.

Install dependencies.

    npm install

Switch to OCaml 4.02.3 (the version of OCaml BuckleScript is based on) so Merlin works.

    opam switch 4.02.3
    eval $(opam env)

# Run

    python -m http.server -d out
    npm run watch

Navigate to http://localhost:8000/ in your web browser of choice.

<!-- vim: set tw=100 -->
