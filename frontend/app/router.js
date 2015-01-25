import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
	this.route('application');
  this.resource('contacts', function() {
      this.resource('contact', { path: '/:contact_id' });
    });
  this.route("login");
  this.route("protected");
});

export default Router;
