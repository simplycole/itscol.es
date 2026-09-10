# itscol.es

## About

This is Cole Pearson's personal website and portfolio: a home for full-stack development, open-source work, old hardware and retro computing, reverse engineering, game development, and technical experiments.

## Design Direction

The site is built like a dark mid-90s personal workstation, with hacker, BBS, and terminal influences alongside old CRT and broadcast-monitor hardware. Industrial precision keeps the interface aligned while worn, gritty surfaces and a horror/goth-adjacent atmosphere give it some history.

It intentionally avoids the polished sameness of a generic modern portfolio. The goal is old-web personality without sacrificing clarity or usability.

## Stack

- Astro
- TypeScript
- Semantic HTML
- Modern CSS
- Minimal JavaScript

Astro produces a static site with no client-side UI framework or runtime server requirement.

## Local Development

Install dependencies:

```sh
npm install
```

Start and manage Astro's background development server:

```sh
npm run dev -- --background
npx astro dev status
npx astro dev logs
npx astro dev stop
```

Run Astro checks, build the site, and preview the production output:

```sh
npm run astro -- check
npm run build
npm run preview
```

## Project Structure

- `src/components` — reusable Astro interface components
- `src/data` — structured project and experiment content
- `src/pages` — public page routes
- `src/styles` — global styling and responsive rules
- `public` — static assets copied directly into the build
- `reference` — visual source material used during design work

## Routes

- `/`
- `/about`
- `/projects`
- `/experiments`
- `/resume`
- `/links`
- `/404.html` — custom Apache error document (excluded from the sitemap)

## Related Public Projects

- [PLEASE REWIND / Dead Channel Video](/projects#please-rewind) — a horror game set in a fictional 1990s independent video store
- [TamaMedics](https://tamamedics.com) — open-source Tamagotchi repair, preservation, and reverse-engineering work
- [Signalbox](https://itscol.es/projects/signalbox/) — a modern open-source terminal client for Pandora, built on the legacy of pianobar
- [GitHub profile](https://github.com/simplycole) — source code and public repositories

## Deployment

The production site is [itscol.es](https://itscol.es), hosted on SiteGround as a static Astro site.

Create the production build with:

```sh
npm run build
```

Astro writes the deployable site to `dist/`. Upload the **contents** of `dist/` into the `itscol.es` SiteGround `public_html` document root. Do not upload the source directories, `node_modules`, or `package.json` to the document root.

The source file `public/.htaccess` is copied to `dist/.htaccess` during the build. It configures the custom `/404.html` error document and conservative static-site compression, caching, and security behavior for Apache-compatible hosting.

Deployment is currently manual; no verified deployment automation is implemented in this repository.

## Privacy

The public site intentionally does not expose private phone, email, address, or location details. Professional contact is routed through public profiles such as [LinkedIn](https://linkedin.com/in/simplycole).

## License

No license has been selected yet.
