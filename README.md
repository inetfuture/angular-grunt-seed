# Third Party Dependencies

- https://github.com/lodash/lodash
- https://github.com/angular-ui/ui-router
- https://github.com/mgonto/restangular
- https://github.com/chieffancypants/angular-loading-bar

# Develop Environment Setup

```shell
# Install essential deb packages
apt-get install aptitude curl git build-essential

# Install node.js environment
curl https://raw.githubusercontent.com/creationix/nvm/v0.25.1/install.sh | bash
. ~/.profile
nvm install 0.12.2
nvm alias default 0.12.2
npm install -g bower grunt-cli

# Intall project dependencies
npm install
bower install --allow-root

# Start dev server, then open http://localhost:3701/
grunt
```

# Style Guide

- [css](http://mdo.github.io/code-guide/)
    - Try **not** to write css code, use bootstrap classes as much as possible
    - When you have to write css code, stay consistence with bootstrap style, use its color/dimension variables as much as possible

- [coffeescript](https://github.com/polarmobile/coffeescript-style-guide)
    - Use these idioms whenever possible http://arcturo.github.io/library/coffeescript/04_idioms.html
    - Limit all lines to a maximum of **119** characters
    - Put `'use strict'` statement at the top of the file, see http://arcturo.github.io/library/coffeescript/07_the_bad_parts.html for why

# Develop Guideline

- Categorize css class: use unique parent class for different view to avoid global pollution.
- Group moudle/feature/view related resources: **don't** group them by file type like controllers, templates, scripts, styles
- Use restangular correctly:

    restangular's request builder is based on RESTful pattern, let's say we have a type of resource: user, the proper designed RESTful api for this resource with it's proper client would look like this:

    ```js
    var Users = R.all('/api/users');

    // GET /api/users, get users collection
    Users.getList();

    // POST /api/users, create one user
    Users.post({ name: 'whatever' });

    // GET /api/users/{userId}, get one user
    var user = Users.one('{userId}').get();

    user.name = 'whatever';
    // PUT /api/users/{userId}, cureate or update one user, the whole user object would be posted
    user.put();

    // PATCH /api/users/{userId}, update one user, partialy
    user.patch({ name: 'whatever' });

    // DELETE /api/users/{userId}, delete one user
    user.delete();

    // NOTE: restangular will automatically track the resource id
    ```

    Methods demonstrated above is standard for RESTful apis, but you'll need to use those `custom****` interface like `customGET`, `customPOST` to deal with those bad designed api or non-RESTful api.
