#!/usr/bin/env bash
read -p "Enter the name of the directory to create:" directory

if [[ -z "$directory" ]]; then
  echo "You didn't enter anything. Exiting."
  exit 1;
fi

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
