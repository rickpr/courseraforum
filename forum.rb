JSForum=HTTParty.get("#{Baseurl}forums", headers: { "Cookie" => Coursecookie })

JSForum.each do |subforum|
  a_forum = Forum.new do |f|
    f.id=subforum["id"]
    f.parent_id=subforum["parent_id"]
    f.name=subforum["name"]
    f.description=subforum["description"]
    f.ftype=subforum["type"]
    f.deleted=subforum["deleted"]
    f.can_post=subforum["can_post"]
    f.show_threads=subforum["show_threads"]
    f.resolved_tag=subforum["resolved_tag"]
    f.display_order=subforum["display_order"]
    f.open_time=subforum["open_time"]
    f.forum_moderators_only=subforum["forum_moderators_only"]
    f.save
  end
end
