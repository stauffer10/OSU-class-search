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
end
