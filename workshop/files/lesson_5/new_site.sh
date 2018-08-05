#!/usr/bin/env bash
directory="my_site"

mkdir -p $directory/{images,scripts,styles}
touch $directory/styles/style.css
cat << 'EOF' > $directory/index.html
<!DOCTYPE html>
<html lang="en-US">
  <head>
    <meta charset="utf-8">
    <title>My Web Site</title>
    <link rel="stylesheet" href="styles/style.css">
  </head>
  <body>
  </body>
</html>
EOF
