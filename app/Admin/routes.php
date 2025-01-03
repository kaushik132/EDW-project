<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');
    $router->resource('contact-uses', ContactUsController::class);
    $router->resource('categories', CategoryController::class);
    $router->resource('cat-categories', CatCategoryController::class);
    $router->resource('services', ServiceController::class);
    $router->resource('service-categories', ServiceCategoryController::class);
    $router->resource('tool-categories', ToolCategoryController::class);
    $router->resource('tools', ToolController::class);

});
