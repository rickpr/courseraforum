i=0
loop do
  i += 1
  JSThread=HTTParty.get("#{Baseurl}threads/#{i}", headers: { "Cookie" => Coursecookie })
  if JSThread.response.code != "200"
    abort("Failed at thread number #{i} with error #{JSThread.response.code}")
  end
  an_fthread = Fthread.new do |t|
    t.id=JSThread["id"]
    t.forum_id=JSThread["forum_id"]
    t.user_id=JSThread["user_id"]
    t.posted_time=JSThread["posted_time"]
    t.last_updated_time=JSThread["last_updated_time"]
    t.last_updated_user=JSThread["last_updated_user"]
    t.deleted=JSThread["deleted"]
    t.is_spam=JSThread["is_spam"]
    t.stickied=JSThread["stickied"]
    t.approved=JSThread["approved"]
    t.unresolved=JSThread["unresolved"]
    t.instructor_replied=JSThread["instructor_replied"]
    t.num_posts=JSThread["num_posts"]
    t.num_views=JSThread["num_views"]
    t.votes=JSThread["votes"]
    t.locked=JSThread["locked"]
    t.anonymous=JSThread["anonymous"]
    t.title=JSThread["title"]
    t.triage_sync_status=JSThread["triage_sync_status"]
    t.triage_status=JSThread["triage_status"]
    t.private=JSThread["private"]
    t.problem_id=JSThread["problem_id"]
    t.link=JSThread["link"]
    t._reporter_link=JSThread["_reporter_link"]
    t._thread_can_be_resolved_without_triage=JSThread["_thread_can_be_resolved_without_triage"]
    t._viewer_can_resolve_with_triage=JSThread["_viewer_can_resolve_with_triage"]
    t.tags=JSThread["tags"].to_s
    t.crumbs=JSThread["crumbs"].to_s
    t.start_page=JSThread["start_page"]
    t.num_pages=JSThread["num_pages"]
    t._viewer_subscription=JSThread["_viewer_subscription"]
    t._viewer_can_edit_title=JSThread["_viewer_can_edit_title"]
    t._viewer_can_resolve_without_triage=JSThread["_viewer_can_resolve_without_triage"]
    t._viewer_can_delete=JSThread["_viewer_can_delete"]
    t._viewer_can_toggle_private=JSThread["_viewer_can_toggle_private"]
    t.save
  end
  postmarker=JSThread["posts"].first["id"]
  flag=nil
  while postmarker
    Minithread=HTTParty.get("#{Baseurl}threads/#{i}?post_id=#{postmarker}", headers: {"Cookie" => Coursecookie})
    if Minithread.response.code != "200"
      abort("Failed at thread #{i} post #{postmarker} with error #{Minithread.response.code}")
    end
    Minithread["comments"].each do |minicomment|
      a_comment = Comment.new do |c|
        c.id=minicomment["id"]
        c.fthread_id=minicomment["thread_id"]
        c.post_id=minicomment["post_id"]
        c.user_id=minicomment["user_id"]
        c.post_time=minicomment["post_time"]
        c.deleted=minicomment["deleted"]
        c.is_spam=minicomment["is_spam"]
        c.votes=minicomment["votes"]
        c.anonymous=minicomment["anonymous"]
        c.comment_text=minicomment["comment_text"]
        c.user_agent=minicomment["user_agent"]
        c.text_type=minicomment["text_type"]
        c._viewer_can_vote=minicomment["_viewer_can_vote"]
        c._viewer_can_edit=minicomment["_viewer_can_edit"]
        c._user_title=minicomment["_user_title"]
        c._user_full_name=minicomment["_user_full_name"]
        c._user_profile_link=minicomment["_user_profile_link"]
        c._user_email_address=minicomment["_user_email_address"]
        c._user_search_link=minicomment["_user_search_link"]
        c._user_details_link=minicomment["_user_details_link"]
        c._show_signature_track_label=minicomment["_show_signature_track_label"]
        c.link=minicomment["link"]
        c._reporter_link=minicomment["_reporter_link"]
        c.save
      end
    end
    Minithread["posts"].each do |minipost|
      if minipost["thread_id"]
        a_post = Post.new do |p|
          p.id=minipost["id"]
          p.order=minipost["order"]
          p.fthread_id=minipost["thread_id"]
          p.user_id=minipost["user_id"]
          p.post_time=minipost["post_time"]
          p.edit_time=minipost["edit_time"]
          p.deleted=minipost["deleted"]
          p.is_spam=minipost["is_spam"]
          p.original=minipost["original"]
          p.stickied=minipost["stickied"]
          p.approved=minipost["approved"]
          p.anonymous=minipost["anonymous"]
          p.votes=minipost["votes"]
          p.post_text=minipost["post_text"]
          p.user_agent=minipost["user_agent"]
          p.text_type=minipost["text_type"]
          p._viewer_can_vote=minipost["_viewer_can_vote"]
          p._viewer_can_edit=minipost["_viewer_can_edit"]
          p._user_title=minipost["_user_title"]
          p._user_full_name=minipost["_user_full_name"]
          p._user_profile_link=minipost["_user_profile_link"]
          p._user_email_address=minipost["_user_email_address"]
          p._user_search_link=minipost["_user_search_link"]
          p._user_details_link=minipost["_user_details_link"]
          p._show_signature_track_label=minipost["_show_signature_track_label"]
          p.link=minipost["link"]
          p._reporter_link=minipost["_reporter_link"]
          p.save
        end
        flag = 1
        postmarker=nil
      else
        if flag
          postmarker=minipost["id"]
          flag = nil
          break
        end
      end
    end
  end
end
