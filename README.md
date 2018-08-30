# Autobob
Autobob is a set of scripts that can be used to post excerpts of Bob's books onto Slack channels.

It basically sends a message to Slack channel with some formatting around it, to accentuate the passive-aggressivity of what you wanna say.

I used to use it back at BuildDirect to disseminate words of wisdom. It was fun. At least for me.

# How does it work

1) Copy some paragraph from Bob's e-book from your favorite Kindle reader.
2) Run ./autobob.sh and answer the questions.
3) See it crash because you're not using a Mac
4) Buy a Mac
5) Run again
6) See it crash because you didn't setup the environment variable `SLACK_HOSTNAME` and `SLACK_SLACKBOTTOKEN`. Go figure what their value should be.
7) Run again
8) See it crash because your channels are probably not the same as mine
9) Fix the channels you want to send to
10) Run again
11) Observe that at this point the formatting is really screwed up because it played with the clipboard in a very bad way. And yeah, it's tightly coupled with the clipboard and non-idempotent.
12) This tool really sucks.
13) Copy again, then run again.
14) At this stage if it works it's a miracle. But if it does, it's gonna send a message from slackbot that looks like below
15) Also the tool pre-dates Clean Architecture, so if you wanna add it, have at it.

# Example

Behold, the word of Bob

**Fired**

The next day my supervisor thanked me for my help, and terminated my employment. Apparently ASC didn’t feel they had the time to nurture a  17-year-old.

_Martin, Uncle Bob - Clean Coder, page 4_

**Glory to you, O Bob!**



Hopefully you'll use the tool to disseminate more useful insights, such as -

```
*Do no harm*

The true professional knows that delivering function at the expense of structure is a fool’s errand. It is the structure of your code that allows it to be flexible. If you compromise the structure, you compromise the future.
The fundamental assumption underlying all software projects is that software is easy to change. If you violate this assumption by creating inflexible structures, then you undercut the economic model that the entire industry is based on.
```

# Epilogue

Like any tool that preaches something it absolutely doesn't follow the precepts that gave it birth, it's tightly coupled to Mac (use of pbpaste) and to Slack. And there's some copy and paste. So it's pretty much worthless. But, eh.
