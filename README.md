# aleph-pages-entrypoint

Docker entrypoint for mounting custom aleph pages

Provide a downloadable zip via `ALEPH_PAGES_ZIP` (e.g. a github repo's zipball)

If no env is set, the default pages are used.

Note: This doesn't respect a custom `ALEPH_PAGES_PATH` as the custom pages from the zip are just extracted into the default pages path (`/aleph/aleph/pages` for the container build)
