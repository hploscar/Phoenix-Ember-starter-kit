import Ember from 'ember';

export default Ember.Component.extend({

  didInsertElement: () => {
    // show dropdown on hover
    Ember.$('.main.menu  .ui.dropdown').dropdown({
      on: 'hover'
    });
    Ember.$('.main.menu').visibility({
      type: 'fixed'
    });
    Ember.$('.overlay').visibility({
      type: 'fixed',
      offset: 80
    });
    // lazy load images
    Ember.$('.image').visibility({
      type: 'image',
      transition: 'vertical flip in',
      duration: 500
    });


  }
});
