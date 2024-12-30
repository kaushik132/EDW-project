<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Category;

class CategoryController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Category';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Category());

     
        $grid->column('category_id', __('Category id'))->sortable();
        $grid->column('title', __('Title'))->sortable();
      
        $grid->column('image', __('Image'))->image(url('/uploads/'), 100, 150)->sortable();
      
       
    
        $grid->column('status', __('Status'))->sortable();
       
        $grid->column('created_at', __('Created at'))->display(function ($created_at) {
            return \Carbon\Carbon::parse($created_at)->format('d M Y');
        });
       

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Category::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('category_id', __('Category id'));
        $show->field('title', __('Title'));
        $show->field('slug', __('Slug'));
        $show->field('short_content', __('Short content'));
        $show->field('view_user', __('View user'));
        $show->field('image', __('Image'));
        $show->field('alt', __('Alt'));
        $show->field('url', __('Url'));
        $show->field('description', __('Description'));
        $show->field('seo_title', __('Seo title'));
        $show->field('seo_description', __('Seo description'));
        $show->field('seo_keyword', __('Seo keyword'));
        $show->field('question', __('Question'));
        $show->field('answer', __('Answer'));
        $show->field('status', __('Status'));
        $show->field('whatapp', __('Whatapp'));
        $show->field('facebook', __('Facebook'));
        $show->field('linkedin', __('Linkedin'));
        $show->field('youtube', __('Youtube'));
        $show->field('twitter', __('Twitter'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Category());

        $form->text('category_id', __('Category id'));
        $form->text('title', __('Title'));
        $form->text('slug', __('Slug'));
        $form->text('short_content', __('Short content'));
        $form->text('view_user', __('View user'));
        $form->image('image', __('Image'));
        $form->text('alt', __('Alt'));
        $form->url('url', __('Url'));
        $form->ckeditor('description', __('Description'));
        $form->textarea('seo_title', __('Seo title'));
        $form->textarea('seo_description', __('Seo description'));
        $form->textarea('seo_keyword', __('Seo keyword'));
        $form->textarea('question', __('Question'));
        $form->textarea('answer', __('Answer'));
        $form->text('status', __('Status'));
        $form->url('whatapp', __('Whatapp'));
        $form->url('facebook', __('Facebook'));
        $form->url('linkedin', __('Linkedin'));
        $form->url('youtube', __('Youtube'));
        $form->url('twitter', __('Twitter'));

        return $form;
    }
}
