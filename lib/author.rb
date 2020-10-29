
class Author
    @@authors = []
    attr_accessor :name

    def initialize (name)
        @name = name
        @@authors << self
    end

    def posts
        Post.all.select{|post| post.author == self}
    end

    def self.all
        @@authors
    end

    def add_post (post)
        post.author = self
    end

    def add_post_by_title (post)
        post = Post.new(post)
        post.author = self
        #Post.all << post
    end

    def self.post_count
        Post.all.count
    end

    


    
end

#betty.add_post_by_title("hello")