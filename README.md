# MacOSconfig

> About programmer's configuration on MacOS

## github

### (use ssh or https)

1. use ssh

  If you git clone something like git.******.git, you are using ssh.

  You have to add ssh keys to you Personal Settings > SSH and GPG keys(just follow github doc.)

2. use https

  If you use a github desktop, you may have the question when you git push in the command line.

  That because the github desktop clones the repo using https.

  So.

  [You need to generate a token.](https://stackoverflow.com/questions/17659206/git-push-results-in-authentication-failed)

## Homebrew

### brew update太慢

  [zhihu solution](https://www.zhihu.com/question/31360766)

  [how to use proxy in brew](https://stackoverflow.com/questions/37231204/osx-proxy-issue-with-homebrew-install)

1. export ALL_PROXY

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

Change the last line:

`socks5 127.0.0.1 9095`

to:

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

## formula

## cask

`shadowsocks-ng`

## spaceEmacs config

[linkapps can't work](https://github.com/syl20bnr/spacemacs/issues/10578)

`ln -s /usr/local/Cellar/emacs-plus/*/Emacs.app/ /Applications/`

enable org and add org-protile in excluded file

## sublime-text

> brew install sublime-text

[package control](https://packagecontrol.io/installation)

If simple solution can't work, use the manual on the right of the page.

While install package, something goes wrong with it.

So we need a proxy.

[Use from Behind a Proxy](https://geteng.xyz/sublime-text.html)

Preference > Package Settings > Package Control > Settings - User:

```json
{
	"bootstrapped": true,
	"channels":
	[
		"https://packagecontrol.io/channel_v3.json",
		"https://web.archive.org/web/20190316015227/https://bitbucket.org/jjones028/p4sublime/raw/tip/packages.json"
	],
	"http": "127.0.0.1:1087",
	"https_proxy": "127.0.0.1:1087",
	"in_process_packages":
	[
	],
	"installed_packages":
	[
		"Package Control",
	]
}

```

### Vim

[Is there a difference between 'syntax on' and 'syntax enable' in vimscript?](https://stackoverflow.com/questions/33380451/is-there-a-difference-between-syntax-on-and-syntax-enable-in-vimscript)

