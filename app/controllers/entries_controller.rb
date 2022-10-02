class EntriesController < ApplicationController
    def index
        @entries = Entry.all.order(created_at: :desc)
    end

    def show
        @entry = Entry.find(params[:id])
    end

    def new
        @entry = Entry.new
    end

    def create
        Entry.create(title: params[:entry][:title], content: params[:entry][:content])
        redirect_to entries_path
    end
end