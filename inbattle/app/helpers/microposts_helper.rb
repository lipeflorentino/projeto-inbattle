module MicropostsHelper

  # Returns the Gravatar for the given user.
  def imagem_for(micropost)
    gravatar_id = Digest::MD5::hexdigest("bonetti@espm.br")
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: micropost.endereco, class: "gravatar")
  end


end
