Gravatar
========

This plugin brings a mixin and a helper to associate Rails models with gravatar resources.


Installation
------------

    cd /path/to/app
    ./script/plugin install git://github.com/jurisgalang/gravatar.git


Usage
-----

Simply mixin the `Gravatar` module into the model that needs to be associated with a gravatar resource using the `has_gravatar` declaration:

    class User < ActiveRecord::Base
      has_gravatar
      end

It adds the `gravatar(..)` method to the User model. It returns a string representing the URL of the gravatar resource associated with each record in the table:

    <%=h user.gravatar %>

You can further customise how the URL is computed by supplying any one of the following optional configuration values for the `has_gravatar` method:

    attr    The name of the attribute that represents the email address associated with the gravatar (defaults to :email)
    size    The gravatar image size used (defaults to 80)
    rating  The gravatar image rating used (defaults to 'g')
    default The gravatar default image used when no gravatar is available (defaults to 'default'); 
            the URI of the default image may also be specified. 

Here's how you would use these options:

    has_gravatar :attr => :email_address
    has_gravatar :attr => :email_address, :size => 25
    has_gravatar :attr => :email_address, :size => 25, :rating => 'g'
    has_gravatar :attr => :email_address, :size => 25, :rating => 'g', :default => 'wavatar'
    has_gravatar :attr => :email_address, :size => 25, :rating => 'g', :default => '/images/default.png'
  
You can also supply and override these options to the gravatar method:

    <%=h user.gravatar(:attr => :email_address) %>
    <%=h user.gravatar(:attr => :email_address, :size => 25) %>
    <%=h user.gravatar(:attr => :email_address, :size => 25, :rating => 'g') %>
    <%=h user.gravatar(:attr => :email_address, :size => 25, :rating => 'g', :default => 'wavatar') %>
    <%=h user.gravatar(:attr => :email_address, :size => 25, :rating => 'g', :default => '/images/default.png') %>

See also: http://en.gravatar.com/site/implement/url


HTML Tag Helper
---------------

An HTML tag helper is included. Wherever you might use:

    <%= image_tag user.gravatar %>
  
Consider using:

    <%= gravatar_for user %>

It may also take the same options as the `gravatar(..)` method in the mixin:

    <%= gravatar_for user, { :attr => :email_address, :ssl => true } %>

As well as HTML options, like the `image_tag` helper:

    <%= gravatar_for user, { :attr => :email_address }, { :border => 5 } %>


Credits
-------

+ Juris Galang <http://github.com/jurisgalang>
+ Alastair Brunton <http://github.com/pyrat>


---

Copyright &copy; 2009 Juris Galang, released under the MIT license
