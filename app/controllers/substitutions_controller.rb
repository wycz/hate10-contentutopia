class SubstitutionsController < ApplicationController
  def create
    @substitution = Substitution.find_or_initialize_by \
      input: substitution_params[:input]

    @substitution.output = substitution_params[:output]

    begin
      @substitution.save!
    rescue ActiveRecord::RecordInvalid
      redirect_to :substitutions and return
    end
    
    redirect_to :substitutions, flash: { notice: 'Substitution created' }
  end

  def index
    @substitutions = Substitution.all

    @doc = {
      version: '0.15',
      groups: [
        {
          name: 'Kongress der Möglichkeiten',
          urls: [
            '-http://localhost:3000*'
          ],
          html: 'none',
          enabled: true,
          substitutions: @substitutions
        }
      ]
    }

    render json: @doc.to_json
  end

  def new
    @count         = Substitution.count
    @substitution  = Substitution.new

    @substitutions = Substitution.all
  end

  private

  def substitution_params
    params.require(:substitution).permit(:input, :output)
  end
end
