AuctionsController < ApplicationController
def create
  Auction.create(auction_attribs)
end

private
def auction
      params.require(:auction).permit(:item, :description, :belongs_to)
        end

end
