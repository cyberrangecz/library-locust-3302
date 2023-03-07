# Cybersecurity game "Locust 3302"
Linear game for [KYPO CRP](https://docs.crp.kypo.muni.cz/) and a sandbox created by [Cyber Sandbox Creator](https://gitlab.ics.muni.cz/muni-kypo-csc/cyber-sandbox-creator/-/wikis/home).

Follow the [general instructions](https://gitlab.ics.muni.cz/muni-kypo-trainings/games/all-games-index) to set up the game.


## Game Levels Summary
- host scan with `nmap`
- vulnerability search with Google or `metasploit`
- exploit `webmin` with `metasploit`
- host exploration and analysis of `.bash_history`
- private SSH key password cracking with `john`
- connect with SSH key

## Topology summary
|Host|Image|Flavor|
|-|-|-|
|attacker|kali|csirtmu.tiny1x2|
|web|debian-10|csirtmu.tiny1x2|
|client|debian-10|csirtmu.tiny1x2|
|router|debian-10|csirtmu.tiny1x2|

## License and Credits
See [licensing](https://gitlab.ics.muni.cz/muni-kypo-trainings/games/all-games-index#license) and how to [cite it](https://gitlab.ics.muni.cz/muni-kypo-trainings/games/all-games-index#how-to-cite-the-games).

[Cybersecurity Laboratory](https://cybersec.fi.muni.cz)\
Faculty of Informatics\
Masaryk University

**Leading authors:** [Adam Chovanec](https://github.com/chovanecadam), Hana Pospíšilová, [Peter Jaško](https://github.com/jaskp)

**Contributors/Consultants:** Valdemar Švábenský, Jan Vykopal, Milan Čermák, Martin Laštovička
