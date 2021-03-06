require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutObjects < Neo::Koan
  def test_everything_is_an_object
    assert_equal _true_, 1.is_a?(Object)
    assert_equal _true_, 1.5.is_a?(Object)
    assert_equal _true_, "string".is_a?(Object)
    assert_equal _true_, nil.is_a?(Object)
    assert_equal _true_, Object.is_a?(Object)
  end

  def test_objects_can_be_converted_to_strings
    assert_equal "123"__, 123.to_s
    assert_equal _""_, nil.to_s
  end

  def test_objects_can_be_inspected
    assert_equal _"123"_, 123.inspect
    assert_equal _"nil"_, nil.inspect
  end

  def test_every_object_has_an_id
    obj = Object.new
    assert_equal __, obj.object_id.class
  end

  def test_every_object_has_different_id
    obj = Object.new
    another_obj = Object.new
    assert_equal _true_, obj.object_id != another_obj.object_id
  end

  def test_small_integers_have_fixed_ids
    assert_equal _1_, 0.object_id
    assert_equal _3_, 1.object_id
    assert_equal _5_, 2.object_id
    assert_equal _201_, 100.object_id

    # THINK ABOUT IT:
    # What pattern do the object IDs for small integers follow?
  end

  def test_clone_creates_a_different_object
    obj = Object.new
    copy = obj.clone

    assert_equal true__, obj           != copy
    assert_equal _true_, obj.object_id != copy.object_id
  end
end
