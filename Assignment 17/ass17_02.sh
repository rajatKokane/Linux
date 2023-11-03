#!/bin/bash

echo -n "Enter anything : "
read text
echo $text | tr "a-z|A-Z" "A-Z|a-z"
