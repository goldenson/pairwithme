# 🌍 Pairing scheduler software [![CircleCI](https://circleci.com/gh/goldenson/pairwithme.svg?style=svg)](https://circleci.com/gh/goldenson/pairwithme)

Scheduling pairing tool for your remote team.

# 💻  Contribute

To get ready to start contributing:
1. Download [Docker for mac](https://docs.docker.com/docker-for-mac/install/)
2. Download [Kitematic](https://kitematic.com/)
3. Install and run `Redis` from docker


```bash
$ git clone git@github.com:goldenson/pairwithme.git
$ cd pairwithme
$ bin/setup
$ foreman start
$ open http://localhost:5000
```

# Background & Research

---

The bigger your team becomes the harder is it to stay close to people. In the past few month, my team grew from 1 developer to 15 🚀. Paying attention to everybody's work is pretty much impossible and gets harder over time. If we don't schedule some time together then we won't get to know each other and we are not able to produce efficient work as a team. Let's spend more time together on solving interesting problems.

This includes several things to consider:

- Your team is distributed and spread across the globe
- Working on a different time zone makes synchronous communication harder
- You're not able to see your team in person makes it harder to know how they feel
- Trust is the number 1 principle that you will need to develop

# Why?

---

1. Creating a safe environment where everybody feels comfortable to contribute
2. Knowing better your team mate will make you a better human being
3. Learning from each other will help you and your team to grow better and faster
4. Spending more time together will help the company moving forward

# How?

---

An app that schedules weekly pairing session with your team. Each week a random folk is assigned to pair on something with another folk. It could be literally any kind of problem that you can learn from each other. Try the experience and you will see how much values you will learn from it.

# Requirements

---

- [ ]  Ask you with who you want to pair with
- [ ]  Ask what you want to pair
- [ ]  Book a time slot together in agenda
- [ ]  Send reminder before the pairing session

## Nice to have features later:

- [ ]  

# Measuring Success

---

1. 

## Roadmap

- [ ]  Product
- [ ]  Landing Page, ([inspiration](https://teamwatch.xyz/))
- [ ]  Marketing

---

## Datebases:

- [x]  Users
    - name
    - email
- [x]  Agendas
    - users
    - timezone
- [ ]  Pairings
    - subjects?
    - users
    - agendas
    - time

---

## Resources:

- [https://developers.google.com/calendar/quickstart/ruby](https://developers.google.com/calendar/quickstart/ruby)
- [https://www.thegreatcodeadventure.com/using-the-google-api-ruby-client-with-google-calendar-api/](https://www.thegreatcodeadventure.com/using-the-google-api-ruby-client-with-google-calendar-api/)
- [https://github.com/northworld/google_calendar](https://github.com/northworld/google_calendar)
- https://readysteadycode.com/howto-integrate-google-calendar-with-rails
- https://readysteadycode.com/howto-access-the-google-calendar-api-with-ruby
- https://github.com/googleapis/signet
