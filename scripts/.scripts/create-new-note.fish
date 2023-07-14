#!/bin/bash

# nvim "notes/"(date "+%Y%m%d%H%M%S.md")

current_date=$(date "+%Y-%m-%d")
current_date_and_time=$(date "+%Y%m%d%H%M%S")

echo "---
title: '$current_date_and_time'
author: "Niklas Alexander Shern"
date: '$current_date'
lang: "da-DK"
tags:
---
" > $current_date_and_time.md

hx $current_date_and_time.md