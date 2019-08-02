class Blog

  @@total_blog_posts = []
  @@number_blog_posts = 0

  def self.all
    @@total_blog_posts
  end

  def self.add(thing)
    @@total_blog_posts << thing
    @@number_blog_posts += 1
  end

  def self.publish
    @@total_blog_posts.each do |post|
      puts "Title:\n #{post.title}"
      puts "Body:\n #{post.content}"
      puts "Publish Date:\n #{post.created_date}"
    end
  end

end

class BlogPost < Blog

  def self.create
    post = new
    puts "Name your blog post:"
    post.title = gets.chomp
    puts "Your blog post content:"
    post.content = gets.chomp
    post.created_date = Time.now
    post.save
    puts "Do you want to create another blog post? [Y/N]"
    create if gets.chomp.downcase == 'y'
#returns if not ‘y’ and stops the rest of the script from running. otherwise, continues to run ‘create’ method.
  end

#set a title, content, a publish date, author for each post
  def title
    @title
  end

  def title=(title) #a setter method always takes an argument
    @title = title #don't forget to set the instance variable
  end

  def created_date
    @created_date
  end

  def created_date=(created_date) #a setter method always takes an argument
    @created_date = created_date #don't forget to set the instance variable
  end

  def content
    @content
  end

  def content=(content)
    @content = content
  end

  def save
    BlogPost.add(self)
  end

end

BlogPost.create
total_blog_posts = BlogPost.all
puts total_blog_posts.inspect
BlogPost.publish
