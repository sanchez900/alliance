json.array!(@recruitement_forms) do |recruitement_form|
  json.extract! recruitement_form, :id, :fname, :ingame_name, :email, :age, :country, :steam_id, :fb_id, :mastery_rank, :join_us
  json.url recruitement_form_url(recruitement_form, format: :json)
end
