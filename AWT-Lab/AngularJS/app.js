// Defining the app module
angular.module('myApp', [])

.controller('MainController', function () {
    this.name = '';

    this.submit = () => {
        alert('Hello, ' + this.name + '!');
    };
})

.component('appForm', {
    template: `
    <form ng-submit="$ctrl.submit()">
        <label for="name">Enter your name:</label>
        <input type="text" id="name" ng-model="$ctrl.name" required>
        <br/>
        <button type="submit">Submit</button>
    </form>    
`,
    controller: 'MainController'
})

.directive('customDir', function () {
    return {
        template: `
        <ul>
                <li id="dir-head">This app demonstrates the use of</li>
                <li>Modules - This app is a module</li>
                <li>Forms</li>
                <li>Controllers - Instructions for the form component were passed through a controller</li>
                <li>Directives - This very text container is from a custom directive</li>
                <li>Components - The form you entered your name in is a component!</li>
        </ul>
        `
    };
});