<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Tool;

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

        $grid->column('id', __('Id'));
        $grid->column('tool_id', __('Tool id'));
        $grid->column('title', __('Title'));
        $grid->column('slug', __('Slug'));
        $grid->column('short_content', __('Short content'));
        $grid->column('description', __('Description'));
        $grid->column('image', __('Image'));
        $grid->column('alt', __('Alt'));
        $grid->column('url', __('Url'));
        $grid->column('seo_title', __('Seo title'));
        $grid->column('seo_description', __('Seo description'));
        $grid->column('seo_keyword', __('Seo keyword'));
        $grid->column('question', __('Question'));
        $grid->column('answer', __('Answer'));
        $grid->column('status', __('Status'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

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
        $show->field('tool_id', __('Tool id'));
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

        $form->text('tool_id', __('Tool id'));
        $form->text('title', __('Title'));
        $form->text('slug', __('Slug'));
        $form->text('short_content', __('Short content'));
        $form->text('description', __('Description'));
        $form->image('image', __('Image'));
        $form->text('alt', __('Alt'));
        $form->url('url', __('Url'));
        $form->text('seo_title', __('Seo title'));
        $form->text('seo_description', __('Seo description'));
        $form->text('seo_keyword', __('Seo keyword'));
        $form->text('question', __('Question'));
        $form->text('answer', __('Answer'));
        $form->text('status', __('Status'));

        return $form;
    }
}
