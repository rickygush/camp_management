require 'test_helper'

class AttendeesControllerTest < ActionController::TestCase
  setup do
    @attendee = attendees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attendees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attendee" do
    assert_difference('Attendee.count') do
      post :create, attendee: { address: @attendee.address, allergies: @attendee.allergies, church: @attendee.church, diet_requirements: @attendee.diet_requirements, dob: @attendee.dob, e_email: @attendee.e_email, e_h_phone: @attendee.e_h_phone, e_m_phone: @attendee.e_m_phone, e_name: @attendee.e_name, e_relationship: @attendee.e_relationship, e_w_phone: @attendee.e_w_phone, f_name: @attendee.f_name, g_email: @attendee.g_email, g_h_phone: @attendee.g_h_phone, g_m_phone: @attendee.g_m_phone, g_name: @attendee.g_name, g_w_phone: @attendee.g_w_phone, gender: @attendee.gender, l_name: @attendee.l_name, medication: @attendee.medication, notes: @attendee.notes, panadol: @attendee.panadol, role: @attendee.role, school: @attendee.school }
    end

    assert_redirected_to attendee_path(assigns(:attendee))
  end

  test "should show attendee" do
    get :show, id: @attendee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attendee
    assert_response :success
  end

  test "should update attendee" do
    patch :update, id: @attendee, attendee: { address: @attendee.address, allergies: @attendee.allergies, church: @attendee.church, diet_requirements: @attendee.diet_requirements, dob: @attendee.dob, e_email: @attendee.e_email, e_h_phone: @attendee.e_h_phone, e_m_phone: @attendee.e_m_phone, e_name: @attendee.e_name, e_relationship: @attendee.e_relationship, e_w_phone: @attendee.e_w_phone, f_name: @attendee.f_name, g_email: @attendee.g_email, g_h_phone: @attendee.g_h_phone, g_m_phone: @attendee.g_m_phone, g_name: @attendee.g_name, g_w_phone: @attendee.g_w_phone, gender: @attendee.gender, l_name: @attendee.l_name, medication: @attendee.medication, notes: @attendee.notes, panadol: @attendee.panadol, role: @attendee.role, school: @attendee.school }
    assert_redirected_to attendee_path(assigns(:attendee))
  end

  test "should destroy attendee" do
    assert_difference('Attendee.count', -1) do
      delete :destroy, id: @attendee
    end

    assert_redirected_to attendees_path
  end
end
