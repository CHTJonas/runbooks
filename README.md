# Charlie's Run Books
Lots of useful scripts to automate a lot of the work I do.
These should really be rewritten to utilise some modern framework/stack like Chef or Puppet, but that's a future project.

Everything here is MIT licensed so feel free to reuse any way you see fit.
If you come up with a new script based on what's here that you think other people will like then please contribute it back to the community.

# Installation
To clone the repo I usually tend to run something along the lines of:
```
git clone https://github.com/CHTJonas/runbooks.git /usr/local/scripts
```

# Setup
1. `cd /usr/local/scripts`
2. `echo "friendly-machine-nickname" > name`
3. `cp secrets/example secrets/friendly-machine-nickname`
4. `nano secrets/friendly-machine-nickname`
5. You're away!

If you're really clever you could even setup a submodule for the secrets directory to share it across multiple machines and track changes!
If you do then make sure the repository resides somewhere safe & secure on a server you own ie. *NOT* on GitHub or GitLab (not even private repos).

# Contributing
Bug reports and feature suggestrions can go to GitHub [issues](https://github.com/CHTJonas/roomballot/issues).
If you want to make a contribution yourself:
1. Fork this repository ( https://github.com/CHTJonas/runbooks/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

# Contributors
Thanks to the following people and organisations who've helped contribute to this repository:
* [GitLab](https://gitlab.com/gitlab-com/runbooks)
* [Ubuntu Community](https://help.ubuntu.com/community)
