module ApplicationHelper
    # gravatar is API 
    def gravatar_for(user, options = {size: 80})
        # email に含まれる大文字を、小文字にする
        gravatar_id = Digest::MD5::hexdigest(user.email.downcase)

        # image のサイズを指定
        size = options[:size]

        # URLを作成
        gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"

        image_tag(gravatar_url, alt: user.username, class: "img-circle")
    end

    def login_helper style = ''
        if logged_in?
            link_to "Logout", logout_path, method: :delete, class: style
        else
            (link_to "Register", signup_path, class: style) +
            " ".html_safe + 
            (link_to "Login", login_path, class: style)
        end
    end

    def navigation_items
        [
            {
                url: root_path,
                title: 'Home'
            },
            {
                url: courses_path,
                title: 'All Course'
            },
            {
                url: reviews_path,
                title: 'All Reviews'
            },
            {
                url: new_course_path,
                title: 'Create New Course'
            },
            {
                url: new_review_path,
                title: 'Create New Review'
            },
        ]
    end

    def navigation_helper style, tag_type
        navigation_links = ''
        navigation_items.each do |item|
            navigation_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
        end
        navigation_links.html_safe
    end

    def active? path
        # return active if current page is a passed path
        "active" if current_page? path
    end

end
