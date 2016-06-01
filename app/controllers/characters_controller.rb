class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy]
 
  # GET /characters
  # GET /characters.json
  def index
    @characters = current_user.character.all
    @api_list = current_user.api.all

      past = Time.new
      past = past - 3601
      @character_array = Array.new

    current_user.api.each do |apikey|
      @key = apikey.keyid
      @vcode = apikey.vcode
      last_call = apikey.last_call


      # end queryApi

      if last_call.blank? or last_call > past 
        queryApi

       apikey.last_call = Time.new
       apikey.save

        puts "queryApi"
      else
        puts "Last Call to soon"
      end
    end # end do statement

  end # end index

      def queryApi

        characters = EveOnline::Account::Characters.new(@key, @vcode)

        Character.create(:character => characters.characters.first.character_name, :corporation => characters.characters.first.corporation_name, :corporationid => characters.characters.first.corporation_id,:user_id => current_user.id)
        Character.create(:character => characters.characters.second.character_name, :corporation => characters.characters.second.corporation_name, :corporationid => characters.characters.second.corporation_id,:user_id => current_user.id)
        Character.create(:character => characters.characters.third.character_name, :corporation => characters.characters.third.corporation_name, :corporationid => characters.characters.third.corporation_id,:user_id => current_user.id)


        
      rescue Exception
        @character_array.push 'Failed to connect to API Server (Check API Keys)'
      end



  # GET /characters/1
  # GET /characters/1.json
  def show
  end

  # GET /characters/new
  def new
    @character = Character.new
  end

  # GET /characters/1/edit
  def edit
  end

  # POST /characters
  # POST /characters.json
  def create
    @character = Character.new(character_params)

    respond_to do |format|
      if @character.save
        format.html { redirect_to @character, notice: 'Character was successfully created.' }
        format.json { render :show, status: :created, location: @character }
      else
        format.html { render :new }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /characters/1
  # PATCH/PUT /characters/1.json
  def update
    respond_to do |format|
      if @character.update(character_params)
        format.html { redirect_to @character, notice: 'Character was successfully updated.' }
        format.json { render :show, status: :ok, location: @character }
      else
        format.html { render :edit }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /characters/1
  # DELETE /characters/1.json
  def destroy
    @character.destroy
    respond_to do |format|
      format.html { redirect_to characters_url, notice: 'Character was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character
      @character = Character.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_params
      params.require(:character).permit(:character, :user_id, :corporation, :corporationid)
    end
end
