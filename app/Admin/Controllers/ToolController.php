<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Tool;
use \App\Models\ToolCategory;

class ToolController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Tool';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Tool());

    
        $grid->column('toolCategory.name', __('Tool Category'));
        $grid->column('title', __('Title'));
        $grid->column('slug', __('Slug'));
      
        $grid->column('image', __('Image'))->image(url('/uploads/'),100,150);
       
        $grid->column('status', __('Status'))->display(function ($status) {
            return $status == 1 ? 'Active' : 'Inactive';
        });
        $grid->column('created_at', __('Created at'))->display(function ($created_at) {
            return \Carbon\Carbon::parse($created_at)->format('d-M-Y');
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
        $show = new Show(Tool::findOrFail($id));

        $show->field('id', __('Id'));
        $show->select('tool_id', __('Tool id'));
        $show->field('title', __('Title'));
        $show->field('slug', __('Slug'));
        $show->field('short_content', __('Short content'));
        $show->field('description', __('Description'));
        $show->field('image', __('Image'));
        $show->field('alt', __('Alt'));
        $show->field('url', __('Url'));
        $show->field('seo_title', __('Seo title'));
        $show->field('seo_description', __('Seo description'));
        $show->field('seo_keyword', __('Seo keyword'));
        $show->field('question', __('Question'));
        $show->field('answer', __('Answer'));
        $show->field('status', __('Status'));
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
        $form = new Form(new Tool());

        $form->select('tool_id', __('Tool id'))->options(ToolCategory::pluck('name','id'))->default(null)->rules('required');
        $form->text('title', __('Title'));
        $form->hidden('slug', __('Slug'));

        $form->saving(function(Form $form){

            $form->slug = strtolower(preg_replace('/[^A-Za-z0-9-]+/', '-',trim($form->title)));
        });

        $form->ckeditor('short_content', __('Short content'));
        $form->ckeditor('description', __('Description'));
        $form->image('image', __('Image'));
        $form->text('alt', __('Alt'));
        $form->url('url', __('Url'));
        $form->text('seo_title', __('Seo title'));
        $form->textarea('seo_description', __('Seo description'));
        $form->textarea('seo_keyword', __('Seo keyword'));
        $form->textarea('question', __('Question'));
        $form->textarea('answer', __('Answer'));
        $form->text('status', __('Status'));

        return $form;
    }
}
