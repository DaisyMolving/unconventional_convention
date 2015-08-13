# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Comment.delete_all
Organiser.delete_all



c1 = Comment.create(guestname: "Daisy", guestemail: "daisy@daisy.com", content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consectetur dolor deserunt quaerat ipsam est dolorem. Dolorum dignissimos porro autem repellat nesciunt non tempore provident blanditiis! Autem perferendis quibusdam perspiciatis qui.")

Paulina = Organiser.create(headshot: "assets/paulina.png", title: "Pow // MOTHER SUPERIOR", email: "pow@iampow.me", twitter_handle: "@payah", personal_site: "www.iampow.me", description: "Business woman during the day, burlesque diva at night. <br>
  Philanthropist and creative maniac day and night.", article_links: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam, nisi?");
Annik = Organiser.create(headshot: "assets/annik.png", title: "Annik // MOTHER SUPERIOR'S RIGHT HAND (AND LEFT BOOB)", email: "annik@ponyexpressclub.com", twitter_handle: "@_PONYexpress", personal_site: "www.ponyexpressclub.com", description: "Queen of the professional speakers scene. Carries a massive fluffy pony everywhere (must be a fetish).", article_links: "");

Current_Content = Content.create(about_us: "We are, well, just eh way you are. Creative, intelligent and active folks, who are hungry for life and always giving themselves new challenges. The first Unconventional Convention was one of them - Pow was turning thirty and Annik kicked her ass to organise something special that would combine the two worlds that she loves; entrepreneurs and alternative performers. The rest is history.

  It's not really about the money", footnote: "Feel free to email us any kind of random (but not spammy) shit, particularly if it's the inspiring kind of shit; ideas for themes, speakers & performers to feature at up-and-coming events or interesting charities that may be on a similar wavelength.")

puts "seeded!"