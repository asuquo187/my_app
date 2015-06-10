class ConcertsController < ApplicationController
  def index
    @concerts = Concert.all
  end

  def show
    @concert = Concert.find(params[:id])
  end

  def new
    @concert = Concert.new
  end

  def create
    @concert = Concert.new
    @concert.artist = params[:artist]
    @concert.music_genre = params[:music_genre]
    @concert.city = params[:city]
    @concert.date = params[:date]
    @concert.venue = params[:venue]

    if @concert.save
      redirect_to "/concerts", :notice => "Concert created successfully."
    else
      render 'new'
    end
  end

  def edit
    @concert = Concert.find(params[:id])
  end

  def update
    @concert = Concert.find(params[:id])

    @concert.artist = params[:artist]
    @concert.music_genre = params[:music_genre]
    @concert.city = params[:city]
    @concert.date = params[:date]
    @concert.venue = params[:venue]

    if @concert.save
      redirect_to "/concerts", :notice => "Concert updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @concert = Concert.find(params[:id])

    @concert.destroy

    redirect_to "/concerts", :notice => "Concert deleted."
  end
end
