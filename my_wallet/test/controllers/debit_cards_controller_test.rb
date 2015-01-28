require 'test_helper'

class DebitCardsControllerTest < ActionController::TestCase
  setup do
    @debit_card = debit_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:debit_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create debit_card" do
    assert_difference('DebitCard.count') do
      post :create, debit_card: { deposits: @debit_card.deposits, withdraws: @debit_card.withdraws }
    end

    assert_redirected_to debit_card_path(assigns(:debit_card))
  end

  test "should show debit_card" do
    get :show, id: @debit_card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @debit_card
    assert_response :success
  end

  test "should update debit_card" do
    patch :update, id: @debit_card, debit_card: { deposits: @debit_card.deposits, withdraws: @debit_card.withdraws }
    assert_redirected_to debit_card_path(assigns(:debit_card))
  end

  test "should destroy debit_card" do
    assert_difference('DebitCard.count', -1) do
      delete :destroy, id: @debit_card
    end

    assert_redirected_to debit_cards_path
  end
end
