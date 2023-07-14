#!/bin/bash

# nvim "notes/"(date "+%Y%m%d%H%M%S.md")
title=${1:-$(date "+%Y%m%d%H%M%S")}
current_date=$(date "+%Y-%m-%d")
#current_date_and_time=$(date "+%Y%m%d%H%M%S")

echo "---
title: '$title'
author: "Niklas Alexander Shern"
date: '$current_date'
lang: "da-DK"
tags:
---
" > ~/notes/$title.md

hx ~/notes/$title.md