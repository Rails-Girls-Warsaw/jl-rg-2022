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
        Entry.create(
            title: params[:entry][:title],
            header: params[:entry][:header],
            content: params[:entry][:content]
        )
        redirect_to entries_path
    end

    def edit
        @entry = Entry.find(params[:id])
    end

    def update
        @entry = Entry.find(params[:id])
        @entry.update(
            title: params[:entry][:title],
            header: params[:entry][:header],
            content: params[:entry][:content]
        )

        redirect_to entry_path(@entry)
    end
end