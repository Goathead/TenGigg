json.array! @posts do |post|
  json.extract! post, :id, :author_id, :title, :popularity, :image_id, :image
end