# NECCDL Website

## Development

You may need to remove the `public` directory if there are weird artifacts from previous builds after major changes.

```bash
npm run start
```

### Docker

```bash
docker compose up

# Exposed on http://localhost:8080
```

Search seems a little bugged, removes the port.

## Publishing

```bash
rm -r public

npm run build
npx -y pagefind --site public
```

## References

- https://github.com/cncf/dot-org-hugo-theme/
    - https://dot-org-hugo-theme-demo.netlify.app/demo-page/
- https://github.com/deepcausality-rs/sites
  - https://beta-7j9.pages.dev/
- https://github.com/todogroup/todogroup.org/
  - https://todogroup.org/

## TODO

- Backfill other years (2019-2008), scrape data from PDFs
- Fill out volunteer page
  - More info on the support page
- Featured page (not sure what this entails, forgot what I meant by it)
