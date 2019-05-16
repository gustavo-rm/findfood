class Post < ApplicationRecord
	belongs_to :category
	belongs_to :author

	validates_presence_of :text, message: 'não pode ser deixado em branco'
    validates_presence_of :subject, message: 'não pode ser deixado em branco'
    validates_presence_of :title, message: 'não pode ser deixado em branco'

    #validates_length_of :text, in: 10..100, message: 'deve ter entre 10 e 100 caracteres'
    #validates_length_of :subject, minimum: 10, message: 'deve ter pelo menos 10 caracteres'
    #validates_length_of :title, maximum: 11, message: 'deve ter até 11 caracteres'

    validates_uniqueness_of :title, message: 'deve ser único'

    scope :recents, -> {(where('created_at < ?', Time.now))}    
    #scope :recents, -> {(where('created_at < ?', Time.now.beginning_of_day - 5.days))} 
end
