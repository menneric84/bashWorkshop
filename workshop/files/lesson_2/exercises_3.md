First, use `cat` to create a new file called `header.html` with this content:


~~~
$ cat << 'EOF' > header.html
<!DOCTYPE html>
<html lang=“en-US”>
  <head>
    <meta charset=“utf-8”>
    <title>$title</title>
  </head>
  <body>
    <div class=“content”>
      <header>
        <h1>AwesomeCo</h1>
      </header>
EOF
~~~

Then create a file called `footer.html` with this content using the same method.


~~~
$ cat << 'EOF' > footer.html
      <footer>
        <small>Copyright &copy; 2099 AwesomeCo</small>
      </footer>
    </div>
  </body>
</html>
EOF
~~~

Finally, create a file called `main.html` that contains this:


~~~
$ cat << 'EOF' > main.html
<main>
  <h2>Welcome!</h2>
  <p>This is the main page!</p>
</main>
EOF
~~~

Now, join the three files together to create a new file called `index.html` using `cat`:

~~~
$ cat header.html main.html footer.html > index.html
~~~

Now print out the contents of the new file to verify it contains the output you expected:

~~~
$ cat index.html
<!DOCTYPE html>
<html lang=“en-US”>
  <head>
    <meta charset=“utf-8”>
    <title>$title</title>
  </head>
  <body>
    <div class=“content”>
      <header>
        <h1>AwesomeCo</h1>
      </header>
<main>
  <h2>Welcome!</h2>
  <p>This is the main page!</p>
</main>
      <footer>
        <small>Copyright &copy; 2099 AwesomeCo</small>
      </footer>
    </div>
  </body>
</html>
~~~

The lines in all three files were combined into a single file.

