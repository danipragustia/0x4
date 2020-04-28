---
layout: post
title: "reCAPTCHA"
tags: [English, Development]
---

Everyone has suffered annoying moment when see reCAPTCHA coming on form. Often, the captcha can be very frustrating and waste of time.

## What is reCAPTCHA?
reCAPTCHA is systems to spot bots (automated systems) that attempt to access to the program or services, most primarily to do malicious things like spams, spread malware, and DDoS Attacks. Installation is very simple and convenience, and many webmasters use it. Doesn't need any hassle work and it works.

## Why he so bad?
In my personal experience, If you are using internet at home and someone or maybe your doing anything too fast / out of ordinary, you must be faced with reCAPTCHA very often. This very annoying because if you need something really fast but reCAPTCHA coming and halt what you do.

Sometimes, nearly impossible to solve it. Like fading speed so slow. According [this page](https://superuser.com/questions/1337801/why-is-recaptcha-image-fade-in-out-so-slow) fading speed depends on Google and how you score. If you have bad score (Range is 0.0 = bot - 1.0 = human) for example 0.2, they slow your fading speed.

Score based your network, if you are using same IP at network. this means that you are not only person facing same problem but people in your network have same problem. Worst scenario if someone on your family / friends come to your house with computer infected by **malicious software**, they could remotely send massive of spams from your network, and score could be very bad.

## What I did and how to make it 'better'
- Using Mobile Data / Dynamic ISP

Some Mobile Provider / ISP have Dynamic IP, your can get new IP by restart your module / phone. I aleardy solved more than 3-5 times on reCAPTCHA without hassle of work. If you think very hard to solve it, you could change you ip again. It works for me.

- VPS

You can buy VPS and run VPN on it, make sure it have Dedicated IP and choose good provider have good policy, this good solution for isolate your activity with your network. Plus side you can use it anywhere, and your not shared your score with anyone.

- Developer Console

If you think transition so slow, you can actually see image on **'Network'** Tab on firefox even transition is not complete. Keep in the mind, this trick *maybe* make your **decrease your score** but if your really need very fast job and doesn't want restart your router / module, this maybe your answer.

## End
In the end, ReCAPTCHA is not good enough, besides pretty annoying. People may leave the website because cant fill reCAPTCHA form. For Webmasters, please dont add it on the form, use *another version is not annoying and waste of time*. 
