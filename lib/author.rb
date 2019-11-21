class Author

    attr_accessor :name
    attr_writer :post

    def initialize(name)
        @name = name
    end

   def posts 
     # access the array that list all the post, 
     #then we will filter that array so that it returns post that are related to the author at that instance

     Post.all.filter {|post| post.author == self}   
    end

    def add_post(post)

        post.author= self

        #we want to associate the argument post with the author at that instance 
        # we need to interact with the post from the post class, so we can assume the argument post, has actually been written in from the post class
        # as a result, this means we can operate on the argument post with the instance methods from the Post class and in turn set a value for that
        # as we want the author to be the person who wrote the post at that instance in time, we can set the value of post.author as self since add_post is in the author class

    end

    def add_post_by_title(post_title)

       new_post = Post.new(post_title)
       add_post(new_post)

       #step 1 - create a new post with post title
       #we can mimic creating something new by introducing a new variable  - new_post
       #we already know we can create a new post when we initialize a new instance of the Post class

       #step 2 - associate that post with the author
       #we already have an method that does this, so we just need to call this with our new post
        
    end

    def self.post_count
        Post.all.length
    end
        

end