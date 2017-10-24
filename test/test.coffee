import { shallow } from 'vue-test-utils'
import HelloWorld from '@/components/HelloWorld.vue'

assert =  require('chai').assert

describe 'HelloWorld.vue', ->
  it 'renders li for each item in props.items', ->
    items = ['', '']
    wrapper = shallow(HelloWorld, {
      propsData: { items }
      })
    assert.equal(wrapper.findAll('li').length,items.length)

  it "test props", ->
    assert.equal('HelloWorld', HelloWorld.name)
  it "test message", ->
    assert.equal('Welcome to Your Vue.js App', HelloWorld.data().msg)


describe "bla", ->
  it "bla", ->
    assert.equal(1,1)
