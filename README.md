# SRE Walkthrough

A walkable 3D concept of a music venue, in one HTML file. You move through a back alley, three projection rooms, a merch room and a VIP lounge, with a floor-plan map and concept renders for each stop.

Built with [three.js](https://threejs.org) r128 from a CDN. No build tools, no dependencies to install.

## Run it

Any static server works:

```sh
sh build.sh
python3 -m http.server 8000
```

Then open <http://localhost:8000>. Opening `index.html` straight from disk will not load the textures.

## Controls

- Drag to look.
- Click the floor to walk there, or use W A S D or the arrow keys.
- Use the floor plan, the stops list, or Prev and Next to jump between stops. Tour walks them for you.

## Files

- `sre-walkthrough.html`: the source. Markup, styles and the whole scene script.
- `build.sh`: wraps the source in a document skeleton and writes `index.html`.
- `index.html`: the built page.
- `assets/`: wall textures, concept renders and the crest.

Layout constants (metres, x east, z south) sit at the top of the script, so the building can be reshaped by editing a handful of numbers. Door positions and some props are concept guesses, not surveyed.

## License

Code is MIT, see `LICENSE`. The images in `assets/` are not open-licensed.
