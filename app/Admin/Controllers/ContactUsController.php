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
        $grid->column('image', __('file'))->image(url('/uploads/'), 100, 150)->sortable();
        $grid->column('fname', __('First Name'))->sortable();
        $grid->column('lname', __('Last Name'))->sortable();
        $grid->column('phone', __('Phone'))->sortable();
        $grid->column('email', __('Email'))->sortable();
        $grid->column('select', __('Select'))->sortable();
        $grid->column('deadline', __('Deadline'))->sortable();
        $grid->column('word_count', __('Word Count'))->sortable();
        $grid->column('check_out_date', __('Check Out Date'))->sortable();
        $grid->column('message', __('Message'))->sortable();
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
