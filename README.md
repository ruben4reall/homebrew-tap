# Homebrew tap

Casks for Ruben Catalao's Mac apps.

| App | Install |
|---|---|
| [Col](https://getcol.vercel.app), the notch, made useful | `brew install --cask ruben4reall/tap/col` |
| [Pli](https://getpli.vercel.app), the iPhone Duo fold on your MacBook | `brew install --cask ruben4reall/tap/pli` |
| [Tiroir](https://gettiroir.vercel.app), your menu bar, in drawers | `brew install --cask ruben4reall/tap/tiroir` |

All three update themselves through Sparkle; `brew upgrade --cask --greedy <name>` works too. Col's cask also links the
`colctl` command (and `islet`, its name before 2.0). Col was called Islet before 2.0.0, and Tiroir was called Tansu
before 1.1.0. Souffleur is now the prompter of Col: its cask is deprecated and points to `col`. Source and issues:
[ruben4reall/col](https://github.com/ruben4reall/col), [ruben4reall/pli](https://github.com/ruben4reall/pli),
[ruben4reall/tiroir](https://github.com/ruben4reall/tiroir).

Col, Pli and Tiroir are not affiliated with Apple.
