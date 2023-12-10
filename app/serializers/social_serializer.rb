class SocialSerializer < BaseSerializer
  # Define los atributos que quieres incluir en tu serialización
  attributes :type, :url_socials

  # Método para mapear social_type a type
  def type
    object.social_type
  end
end
