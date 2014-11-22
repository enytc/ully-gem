require "rubygems"
require "ully/version"
require "httparty"
require "json"
require "yaml"

# ully-gem
# https://github.com/ullyin/ully-gem
#
# Copyright (c) 2014, EnyTC Corporation
# Licensed under the BSD license.

module Ully
  class Client
    include HTTParty
    base_uri ENV["ULLY_URI"] || "https://ully.in/api/"

    def initialize(access_token)
        self.class.default_params :access_token => access_token
    end

    # Pretty responses in terminal
    def self.pretty_response(response, format)
        json = JSON.parse(response.body)
        json_response = json["response"]
        if format == "json"
            JSON.pretty_generate(json_response)
        elsif format == "yaml"
            json_response.to_yaml
        else
            json_response
        end
    end

    # Stats of Ully
    def stats(format=false)
        response = self.class.get("/stats")
        self.class.pretty_response(response, format)
    end

    # Status of Ully API
    def status(format=false)
        response = self.class.get("/status")
        self.class.pretty_response(response, format)
    end

    # Show profile info
    def account(format=false)
        response = self.class.get("/account")
        self.class.pretty_response(response, format)
    end

    # Show collections
    def collections(format=false)
        response = self.class.get("/collections")
        self.class.pretty_response(response, format)
    end

    # Create collection
    def create_collection(name, slug, public_collection=true, format=false)
        response = self.class.post("/collections", :body => {:name => name, :slug => slug, :public => public_collection})
        self.class.pretty_response(response, format)
    end

    # Add url
    def add_url(collection_slug, url, title="", description="", format=false)
        response = self.class.post("/collections/urls", :body => {:title => title, :url => url, :description => description, :slug => collection_slug})
        self.class.pretty_response(response, format)
    end

    # Show shortened urls
    def shortened_urls(format=false)
        response = self.class.get("/shortener")
        self.class.pretty_response(response, format)
    end

    # Shorten url
    def shorten_url(url, shortcode="", password="", format=false)
        response = self.class.post("/shortener/", :body => {:url => url, :shortcode => shortcode, :password => password})
        self.class.pretty_response(response, format)
    end
  end
end
