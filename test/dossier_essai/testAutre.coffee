import { shallow, createLocalVue} from 'vue-test-utils'
import HelloWorld from '@/components/HelloWorld.vue'

describe 'HelloWocqscqscqrld.vue', ->
  it 'renders li forcqscqsc each item in props.items', ->
    localVue = createLocalVue()
    items = ['', '']
    wrapper = shallow HelloWorld,
      localVue: localVue
      propsData: {items}
    assert.equal wrapper.findAll('li').length, 2


describe 'HelloWorld.vue', ->
  it 'renders li for eszefzgregach item in props.items', ->
    items = ['', '']
    wrapper = shallow HelloWorld,
      propsData: {items}
    assert.equal wrapper.findAll('li').length, 2

describe 'wraoer séparré', ->

  it 'version hasProp', ->
    wper = shallow HelloWorld,
      propsData: {'bla':'aie'}
    assert.equal wper.vm.$data.bla, "aie"
    assert wper.isVueInstance()
    assert wper.hasProp('bla', 'aie')
    assert.equal HelloWorld.data().bla , wper.vm.$data.bla


  it "test blabla", ->
    assert.equal '1' , 1
    assert.strictEqual '1', '1'

  it "test message", ->
    assert.equal('Welcome to Your Vue.js App', HelloWorld.data().msg)


describe "bla", ->
  it "bla", ->
    # assert.equal(1,1)
