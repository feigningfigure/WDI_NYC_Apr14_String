
#TO DO: EDIT TITLE/DESCR FIELDS

<%= form_for team_local do |f| %>
  <%= f.text_field :title, {placeholder: "title"} %>
  <%= f.text_field :description, {placeholder: "description"} %>
  <%= f.submit %>
<% end %>
