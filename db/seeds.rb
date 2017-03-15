3.times do |topic|
  Topic.create!(
    title: "#{topic}"
    )
  end

8.times do |anime_item|
  Anime.create!(
    title: "Anime title #{anime_item}",
    subtitle: "Sexy Anime",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    main_image: "http://placehold.it/350x400",
    thumb_image: "http://placehold.it/350x200",
    topic_id: Topic.last.id
  )
end


3.times do |anime_item|
  Anime.create!(
    title: "Anime title #{anime_item}",
    subtitle: "Action Anime",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    main_image: "http://placehold.it/350x400",
    thumb_image: "http://placehold.it/350x200",
    topic_id: Topic.last.id
  )
end
