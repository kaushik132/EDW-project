<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\ContactUs;

class ContactUsController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'ContactUs';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new ContactUs());

        $grid->column('id', __('Id'));
        $grid->column('fname', __('First Name'));
        $grid->column('lname', __('Last Name'));
        $grid->column('phone', __('Phone'));
        $grid->column('email', __('Email'));
        $grid->column('select', __('Select'));
        $grid->column('deadline', __('Deadline'));
        $grid->column('word_count', __('Word Count'));
        $grid->column('image', __('File'));
        $grid->column('check_out_date', __('Check Out Date'));
        $grid->column('message', __('Message'));
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
        $show = new Show(ContactUs::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('fname', __('Fname'));
        $show->field('lname', __('Lname'));
        $show->field('phone', __('Phone'));
        $show->field('email', __('Email'));
        $show->field('select', __('Select'));
        $show->field('deadline', __('Deadline'));
        $show->field('word_count', __('Word count'));
        $show->field('image', __('Image'));
        $show->field('check_out_date', __('Check out date'));
        $show->field('message', __('Message'));
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
        $form = new Form(new ContactUs());

        $form->text('fname', __('Fname'));
        $form->text('lname', __('Lname'));
        $form->phonenumber('phone', __('Phone'));
        $form->email('email', __('Email'));
        $form->text('select', __('Select'));
        $form->text('deadline', __('Deadline'));
        $form->text('word_count', __('Word count'));
        $form->image('image', __('Image'));
        $form->text('check_out_date', __('Check out date'));
        $form->text('message', __('Message'));

        return $form;
    }
}
