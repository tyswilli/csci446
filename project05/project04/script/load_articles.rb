Article.transaction do
  (1..50).each do |i|
    Article.create(:author => "Person #{i}", :title => "Awesome Article #{i}", :body => "I like the number {i}", :edits => i)
   end
end