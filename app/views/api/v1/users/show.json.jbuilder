# json.extract! @user, :id, :name, :email
# json.extract! @user.hierarchy, :id, :name
json.user do
  json.id @user.id
  json.name @user.name
  json.email @user.email
  json.hierarchy @user.hierarchy.name
  json.responsable @user.responsable do
    @user.responsable.each do |responsable|
      json.user_reponsable responsable.user.name
      json.olympic_name responsable.olympic.title
      json.olympic_description responsable.olympic.description
      json.olympic_edition responsable.olympic.edition
      json.start_registration responsable.olympic.start_registration
      json.end_registration responsable.olympic.end_registration
      json.url_logo responsable.olympic.image
    end
  end
end