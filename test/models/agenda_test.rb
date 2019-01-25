require 'test_helper'

class AgendaTest < ActiveSupport::TestCase
  test "#create without a user will not save agenda" do
    agenda = Agenda.create(timezone: 'America/Toronto')

    assert_predicate agenda.errors.messages, :present?
    assert_equal 1, agenda.errors.messages.size
    assert_equal :user, agenda.errors.messages.keys.first
  end

  test "#create without a timezone will not save agenda" do
    agenda = Agenda.create(user: users(:maxime))

    assert_predicate agenda.errors.messages, :present?
    assert_equal 1, agenda.errors.messages.size
    assert_equal :timezone, agenda.errors.messages.keys.first
  end

  test "#create without a user and timezone will not save agenda" do
    agenda = Agenda.create

    assert_predicate agenda.errors.messages, :present?
    assert_equal 2, agenda.errors.messages.size
    assert_equal [:user, :timezone], agenda.errors.messages.keys
  end

  test "#create with a user and timezone will save agenda" do
    agenda = Agenda.create(user: users(:maxime), timezone: 'America/Toronto')

    assert_predicate agenda, :valid?
    assert_predicate agenda, :persisted?
  end
end
