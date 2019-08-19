#!/usr/bin/env ruby

require 'octokit'
require 'rugged'

Octokit.configure do |c|
    c.auto_paginate = true
end

token = ENV["GITHUB_ACCESS_TOKEN"]
client = Octokit::Client.new(access_token: token)
credentials = Rugged::Credentials::UserPassword.new(username: client.user.login, password: token)

client.repos.each do |repo|
    name = repo.name.downcase
    archive_name = repo.full_name.downcase.sub("/", ".")
    url = repo.clone_url
    time = Time.now.utc.strftime("%Y%m%d%H%M%S")
    Rugged::Repository.clone_at(url, name, credentials: credentials)
    `tar -cpj "#{name}" | gpg --batch --compress-algo none -e -r "#{ENV['GPGKEY']}" -o "#{ENV['BACKUP_DESTINATION']}/#{archive_name}.git.#{time}.tar.bz2.gpg"`
    FileUtils.remove_dir(name, true)
end
