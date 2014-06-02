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
    base_uri ENV["ULLY_URI"] || "https://ully.in/api"

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

    # Stats of Ully
    def stats_by_username(username, format=false)
        response = self.class.get("/stats/"+username)
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

    # Update profile info
    def update_account(current_password, name="", email="", username="", password="", format=false)
        response = self.class.put("/account", :body => {:name => name, :email => email, :username => username, :currentpassword => current_password, :password => password})
        self.class.pretty_response(response, format)
    end

    # Show collections
    def collections(format=false)
        response = self.class.get("/collections", :query => {:fields => "name,slug,urls,public"})
        self.class.pretty_response(response, format)
    end

    # Show collections by username
    def collections_by_username(username, format=false)
        response = self.class.get("/collections/of/"+username, :query => {:fields => "name,slug,urls,public"})
        self.class.pretty_response(response, format)
    end

    # Create collections
    def create_collections(name, slug, public_collection=true, format=false)
        response = self.class.post("/collections", :body => {:name => name, :slug => slug, :public => public_collection})
        self.class.pretty_response(response, format)
    end

    # Update collections
    def update_collections(collection_slug, name="", slug="", public_collection=true, format=false)
        response = self.class.put("/collections/"+collection_slug, :body => {:name => name, :slug => slug, :public => public_collection})
        self.class.pretty_response(response, format)
    end

    # Delete collections
    def delete_collections(collection_slug, format=false)
        response = self.class.delete("/collections/"+collection_slug)
        self.class.pretty_response(response, format)
    end

    # Create urls
    def create_urls(collection_slug, url, title="", description="", format=false)
        response = self.class.post("/collections/"+collection_slug+"/urls", :body => {:title => title, :url => url, :description => description})
        self.class.pretty_response(response, format)
    end

    # Update urls
    def update_urls(collection_slug, url_id, url, title="", description="", format=false)
        response = self.class.put("/collections/"+collection_slug+"/urls/"+url_id, :body => {:title => title, :url => url, :description => description})
        self.class.pretty_response(response, format)
    end

    # Delete urls
    def delete_urls(collection_slug, url_id, format=false)
        response = self.class.delete("/collections/"+collection_slug+"/urls/"+url_id)
        self.class.pretty_response(response, format)
    end
  end
end
