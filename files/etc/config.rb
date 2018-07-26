# Define the wiki options
wiki_options = {
  :h1_title => true,
  :user_icons => 'gravatar',
  :live_preview => false,
  :allow_uploads => true,
  :per_page_uploads => true,
  :allow_editing => true,
  :css => false,
  :js => false,
  :mathjax => true,
  :emoji => true,
  :show_all => true
}

# Send the wiki options to the Gollum app
Precious::App.set(:wiki_options, wiki_options)
# If present, undefine the :FORMAT_NAMES constant to avoid the 
# "already initialized constant FORMAT_NAMES" warning
Gollum::Page.send :remove_const, :FORMAT_NAMES if defined? Gollum::Page::FORMAT_NAMES
# Redefine the :FORMAT_NAMES constant to limit the available
# formats on the editor to only markdown
Gollum::Page::FORMAT_NAMES = { :markdown  => "Markdown" }
