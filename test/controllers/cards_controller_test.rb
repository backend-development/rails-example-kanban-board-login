# frozen_string_literal: true

require 'test_helper'

class CardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @card = cards(:one)
  end

  test 'should get index' do
    get cards_url
    assert_response :success
  end

  test 'should get new' do
    get new_card_url
    assert_response :success
  end

  test 'should create card' do
    assert_difference('Card.count') do
      post board_cards_url,
           params: { card: { board_id: @card.board_id, description: @card.description, status: @card.status,
                             title: @card.title } }
    end

    assert_redirected_to card_url(Card.last)
  end


  test 'should get edit' do
    get edit_board_card_url(@board, @card)
    assert_response :success
  end

  test 'should update card' do
    patch card_url(@card),
          params: { card: { board_id: @card.board_id, description: @card.description, status: @card.status,
                            title: @card.title } }
    assert_redirected_to card_url(@card)
  end

  test 'should destroy card' do
    assert_difference('Card.count', -1) do
      delete card_url(@card)
    end

    assert_redirected_to cards_url
  end
end
