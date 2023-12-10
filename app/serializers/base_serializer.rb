# frozen_string_literal: true

class BaseSerializer < ActiveModel::Serializer
  def attributes(*args)
    hash = super
    hash.each_with_object({}) do |(key, value), result|
      result[pascalize(key)] = value
    end
  end

  def has_many(association_name, options = {}, &block)
    super(association_name, options.merge(key: pascalize(association_name)), &block)
  end

  def has_one(association_name, options = {}, &block)
    super(association_name, options.merge(key: pascalize(association_name)), &block)
  end

  private

  def pascalize(string)
    string.to_s.split('_').map(&:capitalize).join
  end
end
