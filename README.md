# MacOSconfig

## About setup on new MacOS

## Homebrew 

[**brew update太慢**](https://www.zhihu.com/question/31360766)

1. export ALL_PROXY
[how to use proxy in brew](https://stackoverflow.com/questions/37231204/osx-proxy-issue-with-homebrew-install)

To run Homebrew or Curl behind a proxy:
`export ALL_PROXY=$http_proxy:port`
or
`export ALL_PROXY=proxyIP:port`
After this is done, installation worked smoothly.

`export ALL_PROXY=socks5://127.0.0.1:1086`

2. proxychains

First, install proxychains:
`brew install proxychains-ng`

Then, modify the file in the proxychains.

For me, it is:
`vim /usr/local/Cellar/proxychains-ng/4.14/.brew/.bot/etc/proxychains.conf`

Changethe last line:
-`socks5 127.0.0.1 9095`-
`socks5 127.0.0.1 8086`
> It should be your proxy number. 

Next time, when you run brew command, just do like this:
`proxychains4 brew update/install ***`

3. modify the .curlrc(Not work for me, I don't know why)
> The homebrew downloads through curl, so this solution is use proxy in curl.
`vim ~/.curlrc`

Add one line like this:
`socks5 = "127.0.0.1:1086"`

Then you should restart your terminal. Have a try!
## spaceEmacs config

[linkapps can't work](https://github.com/syl20bnr/spacemacs/issues/10578)

`ln -s /usr/local/Cellar/emacs-plus/*/Emacs.app/ /Applications/`

enable org and add org-protile in excluded file
