  def copy_cat(from_slug, to_slug)
    from_main, from_sub = from_slug.split('/', 2)
    to_main, to_sub = to_slug.split('/', 2)

    cat_f = from_sub == nil ? Category.find_by_slug(from_slug) : Category.find_by_slug(from_sub, from_main)
    if cat_f == nil
      return false
    end
    cat_t = to_sub == nil ? Category.find_by_slug(to_slug) : Category.find_by_slug(to_sub, to_main)
    if cat_t == nil
      return false
    end

    Topic.where(category_id: cat_f.id).each do |topic|
      unless topic.custom_fields.has_key?('original_slug')
        topic.custom_fields['original_slug'] = from_slug
        topic.save!
      end
    end

    Topic.where(category_id: cat_f.id).update_all(category_id: cat_t.id)

    cat_f.delete()
  end

to_cat = 'admins-forum'
copy_cat('admins-forum/moparscape-administration-board', to_cat)
copy_cat('moparcraft-admins-forum', to_cat)

to_cat = 'community-inside-talk'
copy_cat('cm-rs2-hacking-polls', to_cat)
copy_cat('community-contributors', to_cat)
copy_cat('community-contributors-polls', to_cat)
copy_cat('community-inside-runescape2-client-hacking-board', to_cat)
copy_cat('moparscape-community-member-board/member-discussion', to_cat)
copy_cat('moparscape-community-member-board', to_cat)
copy_cat('veteran-polls', to_cat)
copy_cat('veteran-talk', to_cat)

to_cat = 'community-suggestions'
copy_cat('suggestions-nominations-and-reviews/moderation-of-suggestions-etc', to_cat)
copy_cat('suggestions-nominations-and-reviews/resolved-suggestions', to_cat)
copy_cat('suggestions-nominations-and-reviews', to_cat)
copy_cat('mopar-monthly-management', to_cat)
copy_cat('tutorial-team', to_cat)

to_cat = 'games'
copy_cat('games/minecraft-discussion-old', to_cat)
copy_cat('games/moparcraft-staff-section', to_cat)
copy_cat('dayz-discussion', to_cat)
copy_cat('dayz-server-management', to_cat)
copy_cat('clan-and-events-board', to_cat)
copy_cat('forum-games', to_cat)
copy_cat('neoscape', to_cat)

to_cat = 'general-discussion'
copy_cat('off-topic', to_cat)

to_cat = 'minecraft'
copy_cat('minecraft-server-client-mods', to_cat)

to_cat = 'runescape'
copy_cat('request-srl-member-status/accepted-members', to_cat)
copy_cat('request-srl-member-status/denied-applications', to_cat)
copy_cat('request-srl-member-status', to_cat)
copy_cat('moparscape-client-questions', to_cat)
copy_cat('runeemu-development', to_cat)
copy_cat('moparscape-development', to_cat)
copy_cat('moparclassic-discussion', to_cat)
copy_cat('other-scar-scripts', to_cat)
copy_cat('private-moparscape-classic-dev-discussion', to_cat)
copy_cat('hybridscape-development', to_cat)
copy_cat('general-chat-script-help', to_cat)
copy_cat('elite-server-owner-discussion', to_cat)
copy_cat('community-server-infrastructure', to_cat)
copy_cat('bug-reports', to_cat)
copy_cat('api-development', to_cat)
copy_cat('anti-random-development', to_cat)
copy_cat('cherokee-devs', to_cat)
copy_cat('aryan-finished-scripts', to_cat)
copy_cat('aryan-is-dead-as-a-doornail', to_cat)
copy_cat('aryan-private-server-scripts', to_cat)
copy_cat('aryan-scripting-help', to_cat)
copy_cat('aryan-script-requests', to_cat)
copy_cat('scar-development', to_cat)
copy_cat('scar-faqs-and-tutorials', to_cat)
copy_cat('scar-first-scripts-section', to_cat)
copy_cat('scar-neopets-scripts', to_cat)
copy_cat('scar-runescape-scripts', to_cat)
copy_cat('scar-scripting-help', to_cat)
copy_cat('scar-script-requests', to_cat)
copy_cat('scar-script-sales', to_cat)
copy_cat('scar-script-sales-temp-board', to_cat)
copy_cat('server-development', to_cat)
copy_cat('server-help', to_cat)
copy_cat('srl-discussion', to_cat)
copy_cat('srl-private-scripts', to_cat)
copy_cat('srl-repository-commits', to_cat)
copy_cat('srl-scripts/agility', to_cat)
copy_cat('srl-scripts/buyers', to_cat)
copy_cat('srl-scripts/cooking', to_cat)
copy_cat('srl-scripts/crafting', to_cat)
copy_cat('srl-scripts/discontinued', to_cat)
copy_cat('srl-scripts/fighting', to_cat)
copy_cat('srl-scripts/firemaking', to_cat)
copy_cat('srl-scripts/fishing', to_cat)
copy_cat('srl-scripts/fletching', to_cat)
copy_cat('srl-scripts/herblore', to_cat)
copy_cat('srl-scripts/hunting', to_cat)
copy_cat('srl-scripts/hybrid', to_cat)
copy_cat('srl-scripts/magic', to_cat)
copy_cat('srl-scripts/mining', to_cat)
copy_cat('srl-scripts/old-public-scripts', to_cat)
copy_cat('srl-scripts/prayer', to_cat)
copy_cat('srl-scripts/request-a-new-board', to_cat)
copy_cat('srl-scripts/runecrafting', to_cat)
copy_cat('srl-scripts/smelters', to_cat)
copy_cat('srl-scripts/smithing', to_cat)
copy_cat('srl-scripts/thieving', to_cat)
copy_cat('srl-scripts/utilities', to_cat)
copy_cat('srl-scripts/woodcutting', to_cat)
copy_cat('srl-scripts', to_cat)
copy_cat('srl-useful-procedures-and-functions', to_cat)
copy_cat('has-requested-to-join', to_cat)
copy_cat('inside-news-amp-discussions', to_cat)
copy_cat('unapproved-development-teams', to_cat)
copy_cat('unapproved-tutorials', to_cat)

to_cat = 'staff'
copy_cat('sectional-board', to_cat)
copy_cat('staff-suggestions', to_cat)
copy_cat('ex-staff', to_cat)
copy_cat('irc-ops', to_cat)
copy_cat('moderators-forum/global-moderators-forum', to_cat)
copy_cat('moderators-forum/member-discussion', to_cat)
copy_cat('moderators-forum', to_cat)
copy_cat('moparscape-moderators-forum/moparscape-global-moderators-forum', to_cat)
copy_cat('moparscape-moderators-forum/nominations', to_cat)
copy_cat('moparscape-moderators-forum', to_cat)

to_cat = 'trash-can'
copy_cat('trash-bin', to_cat)
copy_cat('cleanup-rubbish-bin', to_cat)
copy_cat('automated-spam', to_cat)

