# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"
    )
end
10.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
        body: "Contrary to popular belief, Lorem Ipsum is not simply random text. 
        It has roots in a piece of classical Latin literature from 45 BC,
         making it over 2000 years old. Richard McClintock, a Latin professor at 
         Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, 
         consectetur, from a Lorem Ipsum passage, and going through the cites of the word in 
         classical literature, discovered the undoubtable source. Lorem Ipsum comes from 
         sections 1.10.32 and 1.10.33 of ",
      topic_id: Topic.last.id
    )
end
puts "10 blog posts created"

5.times do |skill|

    Skill.create!(
        title:"Rails #{skill}",
        percent_utilized:15    
    )
end
puts "5 skills  created"

8.times do |portfolio_item|

    Portfolio.create!(
        title:"Portfolio title #{portfolio_item}",
        subtitle:"Ruby on Rails",
        body:"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis 
        praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi 
        sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, 
        id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.
         Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus
          id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor
           repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus 
           saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque
            earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiore
            s alias consequatur aut perferendis doloribus asperiores repellat",
        main_image:"http://placehold.it/600X400",
        thumb_image:"http://placehold.it/350x200"
    )
end
1.times do |portfolio_item|
    Portfolio.create!(
        title:"Portfolio title #{portfolio_item}",
        subtitle:"Angular",
        body:"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis 
        praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi 
        sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, 
        id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.
         Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus
          id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor
           repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus 
           saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque
            earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiore
            s alias consequatur aut perferendis doloribus asperiores repellat",
        main_image:"http://placehold.it/600X400",
        thumb_image:"http://placehold.it/350x200"
    )
end
3.times do |technology|
    Portfolio.last.technologies.create!(
        name: "Technology #{technology}"
        
    )
end

puts "3 technologies created"