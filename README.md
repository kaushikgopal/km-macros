This repository contains the Custom [Keyboard Maestro](http://www.keyboardmaestro.com/main/) scripts that I've found to be useful:

I made most of the below scripts with the guidance of the super helpful members at KM's [official yahoo group](http://tech.groups.yahoo.com/group/keyboard_maestro/).

# INSTALLATION

go to Keyboard Maestro > File > Import Macros...

some of the scripts are application specific, so i suggest you create a new group for these and assign them to the respective applications.

# AVAILABLE SCRIPTS

0.  Backup complete Keyboard Maestro Shell script

    This is a shell script to backup all your Keyboard Maestro Settings and Data 

1.  Open two new Finders and align : (apply to Finder)

    Open two new Finder windows and have them aligned neatly

2. Delete Permanently : (apply to Finder) 

    When you delete a file from Finder, it generally goes to the Trash. However unlike Windows, there's no direct shortcut key to "Delete Permanently" from the Finder (without having to go to the Trash bin and then manually delete from there as well)

3. Keyword Search Engine  : (apply to Browser)

    This is pretty awesome. I've always whined that Google Chrome doesn't sync "[Keyword Search engines](http://www.google.com/support/chrome/bin/answer.py?answer=95653)" and so having to set this up each time I wipe my settings is a pain. Moreover, if shift to Safari, this had to be setup again. With this script, I get some sane uniformity for my browsing search experience. KM's awesome developer Peter Lewis whipped this one personally for me. He's one of the awesomest most responsive developers. 

4. Text Manipulation Snippets
    
    + Delete Line
    + Dupicate Line
    + Fence Text Block  : Create two long fence lines on selected text
    + MD Inline Link    : Creates a markdown link on the selected text from the clipboard stored URL
    + WrapTextMacros    : see [my blog post on the subject](http://journal.kaush.co/453/true-textmate-like-auto-pairing-with-bbedit-using-keyboard-maestro)
        - Wrap with '   : if no text selected then inserts closing quote. If you have a text selected it wraps with character
        - Wrap with "   : if you hit the enter key quickly after entering the open bracket, KM magically auto-pairs with indents
        - Wrap with (   : all the wrap macros follow above principle
        - Wrap with [
        - Wrap with {