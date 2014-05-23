#TO DO: EDIT TITLE/CONTENT FIELDS

<%= form_for player_local do |f| %>
  <%= f.text_field :title, { placeholder: "title" } %>
  <%= f.text_field :content, { placeholder: "content" } %>
  <%= f.hidden_field :team_id, value: team_id %>
  <%= f.submit %>
<% end %>
