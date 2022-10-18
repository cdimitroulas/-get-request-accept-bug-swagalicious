class ApplicationController < ActionController::Base
  def test
    respond_to do |f|
      f.html { raise ArgumentError.new('Unexpected Accept header') }
      f.json { render json: { message: 'hello world' } }
    end
  end
end
