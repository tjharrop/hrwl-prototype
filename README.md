# Prototyping kit

Get up and running quickly with the [digital-nsw-template](https://github.com/digitalnsw/digital-nsw-template).

This is a [Ruby](https://www.ruby-lang.org/) application, using the [Sinatra web framework](https://http://sinatrarb.com).

## Prerequisites

You will need to install:

- Ruby 2.5.0 – the easiest way to install is with [rbenv](https://github.com/rbenv/rbenv) and [ruby-build](https://github.com/rbenv/ruby-build)
- Bundler – run `gem install bundler`

Then run `bundle install` to install all the dependencies.

## Quick start

Run the following in your console window to start the prototyping kit and open the server in your web browser.

```
bin/shotgun -p 5000
open http://localhost:5000
```

To make changes to the application, edit `app.rb`.

## Technical documentation

### Storing user data for a session

It is easy to save values submitted by users for use later. By default, all parameters sent in a request are saved to the current user's session. You can access them through the `data` helper method.

For example, the following code will save the value of the text field and pre-fill the value on future requests:

```erb
<input type="text" name="address" value="<%= data[:address]">
<button type="submit">Save</button>
```

See the example user journey in `lib/prototyping_kit/views/example/` for a demonstration.

To clear all saved data from the current session, visit `/reset-data` in the browser.

### Using assets

Assets in the `assets/stylesheets`, `assets/javascripts` and `assets/images` directories are automatically compiled into `/assets` on the server.

For example, in your views:

```html
<img src="/assets/image.jpg">
```

In your CSS:

```css
body {
  background: url('image.jpg');
}
```

### Editing the template gem on your machine

If you need to work on the prototyping kit and the [digital-nsw-template](https://github.com/digitalnsw/digital-nsw-template) at the same time, set the `TEMPLATE_DEV` environment variable.

When set, the app will look for the template in `../digital-nsw-template`.
