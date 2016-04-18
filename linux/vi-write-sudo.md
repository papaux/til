# vi: write as sudo

I'm sure it already happened to you: you open a file for editing, start modifying and when you want to quit and save.... Baam, the file is write-protected for non root users and you forgot to sudo before opening.

The solution is simple. Just run the following command in vi:


```
:w !sudo tee %
```

