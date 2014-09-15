LoginViewInlineForm      = require './loginviewinlineform'
LoginInputView           = require './logininputview'

module.exports = class LoginInlineForm extends LoginViewInlineForm

  constructor:->

    super

    @username = new LoginInputView
      inputOptions    :
        name          : "username"
        forceCase     : "lowercase"
        placeholder   : "username or email"
        testPath      : "login-form-username"
        validate      :
          event       : 'blur'
          rules       :
            required  : yes
          messages    :
            required  : "Please enter a username."

    @password = new LoginInputView
      inputOptions    :
        name          : "password"
        type          : "password"
        placeholder   : "password"
        testPath      : "login-form-password"
        validate      :
          event       : 'blur'
          rules       :
            required  : yes
          messages    :
            required  : "Please enter your password."

    @button = new KDButtonView
      title       : "Sign in"
      style       : "solid medium green"
      type        : 'submit'
      loader      : yes

  activate: ->
    @username.setFocus()

  resetDecoration:->
    @username.resetDecoration()
    @password.resetDecoration()

  pistachio:->
    """
    <div>{{> @username}}</div>
    <div>{{> @password}}</div>
    <div>{{> @button}}</div>
    """
