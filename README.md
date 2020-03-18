# Maskermatch

Bijdrage leveren? Dat kan!
* Maak een fork en een pull request.
* Meld problemen via de [issues](https://github.com/MakeInBelgium/maskermatch/issues/new).

## Deployment

Site is voorlopig beschikbaar in slechts 1 taal:
- NL: https://maskermatch.be/ https://maskersgezocht.be
- FR: ???

Het is een *onepager* en iedere taal heeft zn eigen index bestand:
- index_nl.html
- index_fr.html

De website wordt gehost bij cloudz.be. Daar draait een script dat iedere 5 minuten een `git pull` doet van deze repo.
Hou er rekening mee dat Cloudflare alles cached. Bij een update moet de cached geïnvalideerd worden.

```bash
# Stuur je public key naar @iworx
ssh coronade@da-2.cloudz.be
```

## Kom er bij!
Neem dan deel aan de conversatie op de Slack workspace van de Corona-denktank Make in Belgium: https://join.coronadenktank.be (Kanaal: #corona-maskermatch).


# local server
Zelf een lokale server opzetten? Dat kan op verschillende manieren!

## met python
Eenvoudig lokaal previewen met het terminal-commando: `python3 -m http.server 8000` (of `python -m http.server 8000` als python 3 je standaardpython is)
De Naaiactie is vervolgens bereikbaar op `http://localhost:8000`

## met php
Heb je php op je computer geïnstalleerd? Gebruik dan de PHP built-in webserver:

```
$> php -S 0.0.0.0:8000
```

De Maskermatch is vervolgens bereikbaar op `http://localhost:8000`

## met docker
Gebruik de `Dockerfile` om een image te builden. Zie `docker-run.sh` voor een voorbeeld van hoe het in productie wordt gedraaid. Hiervoor gebruiken we een set-up met Traefik, voor de config, zie de repository van [solidariteitsnetwerk](https://github.com/MakeInBelgium/solidariteitsnetwerk/tree/master/deployment).


# CSS
De css wordt gegenereerd met bootstrap in de npm dependencies, dit kan via het commando `npm ci`. Vervolgens kan je in de map `assets/css` met [SCSS](https://sass-lang.com/) de SCSS converteren naar CSS:

**Dev (met auto refresh)**

```
scss --watch style.scss:style.css
```

**Prod (voor een push)**

```
scss --style compressed style.scss style.css
```
